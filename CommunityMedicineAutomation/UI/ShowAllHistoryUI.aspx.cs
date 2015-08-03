using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommunityMedicineAutomation.BLL;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.UI
{
    public partial class ShowAllHistoryUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        PatientManager patientManager = new PatientManager();
        TreatmentManager treatmentManager = new TreatmentManager();
        CenterManager centerManager = new CenterManager();
        DoctorManager doctorManager = new DoctorManager();
        DiseaseManager diseaseManager = new DiseaseManager();
        MedicineManager medicineManager = new MedicineManager();
        public void ShowAllTreatment(string centerName, string date, string doctorName, string observation, int count, List<Treatment> aTreatmentList)
        {
            this.form1.Controls.Add(new LiteralControl( "<p><u>Treatment-"+count+"</u></p>"));
            Label label = new Label();
            label.ID = "Label1";
            label.Text = "Center Name";
            this.form1.Controls.Add(label);
            TextBox textBox1 = new TextBox();
            textBox1.ID = "centerNameTextBox";
            textBox1.Text=centerName;
            this.form1.Controls.Add(textBox1);
            this.form1.Controls.Add(new LiteralControl("<br/><br/>"));

            Label label2 = new Label();
            label2.ID = "Label2";
            label2.Text = "Date";
            this.form1.Controls.Add(label2);
            TextBox textBox2 = new TextBox();
            textBox2.ID = "dateTextBox";
            textBox2.Text = date;
            this.form1.Controls.Add(textBox2);
            this.form1.Controls.Add(new LiteralControl("<br/><br/>"));

            Label label3 = new Label();
            label3.ID = "Label3";
            label3.Text = "Doctor";
            this.form1.Controls.Add(label3);
            TextBox textBox3 = new TextBox();
            textBox3.ID = "doctorTextBox";
            textBox3.Text = doctorName;
            this.form1.Controls.Add(textBox3);
            this.form1.Controls.Add(new LiteralControl("<br/><br/>"));

            Label label4 = new Label();
            label4.ID = "Label4";
            label4.Text = "Observation";
            this.form1.Controls.Add(label4);
            this.form1.Controls.Add(new LiteralControl("<br/>"));
            TextBox textBox4 = new TextBox();
            textBox4.ID = "observationTextBox";
            textBox4.TextMode = TextBoxMode.MultiLine;
            textBox4.Text = observation;
            this.form1.Controls.Add(textBox4);
            this.form1.Controls.Add(new LiteralControl("<br/><br/>"));


            GridView gridView = new GridView();
            gridView.ID = "gridView1";
            gridView.AutoGenerateColumns =false;
            BoundField boundField1 = new BoundField();
            boundField1.DataField = "NameOfDisease";
            boundField1.HeaderText = "Disease";
            gridView.Columns.Add(boundField1);

            BoundField boundField2 = new BoundField();
            boundField2.DataField = "NameOfMedicine";
            boundField2.HeaderText = "Medicine";
            gridView.Columns.Add(boundField2);

            BoundField boundField3 = new BoundField();
            boundField3.DataField = "Dose";
            boundField3.HeaderText = "Dose";
            gridView.Columns.Add(boundField3);

            BoundField boundField4 = new BoundField();
            boundField4.DataField = "TakenTime";
            boundField4.HeaderText = "Before/After Meal";
            gridView.Columns.Add(boundField4);

            BoundField boundField5 = new BoundField();
            boundField5.DataField = "Quantity";
            boundField5.HeaderText = "Quantity";
            gridView.Columns.Add(boundField5);

            BoundField boundField6 = new BoundField();
            boundField6.DataField = "Note";
            boundField6.HeaderText = "Note";
            gridView.Columns.Add(boundField6);

            this.form1.Controls.Add(gridView);
            gridView.DataSource = aTreatmentList;
            gridView.DataBind();
            this.form1.Controls.Add(new LiteralControl("<br/><br/>"));
        }

        protected void showButton_Click(object sender, EventArgs e)
        {
  
            Patient aPatient = new Patient();
            aPatient.VoterId = nationalIdTextBox.Text;
            GetPatientInformation(aPatient.VoterId);
            aPatient.Id = patientManager.GetPatientId(aPatient);
            aPatient.ServiceTimes = patientManager.GetServiceTimes(aPatient);
            if (aPatient.ServiceTimes < 1)
            {
                megLabel.Text = "Didn't take any treatment!";
            }
            else {
                int count = 0;
                List<Treatment> ObservationList = treatmentManager.GetObservationList(aPatient);
                foreach (var observation in ObservationList) {
                    count++;
                    string centerName = centerManager.GetCenterName(observation.CenterId);
                    string Date = observation.Date;
                    string DoctorName = doctorManager.GetDoctorName(observation.DoctorId);
                    string Observation = observation.Observation;
                    List<Treatment> treatmentList = treatmentManager.GetTreatmentList(observation.ObservationId);
                    List<Treatment> aTreatmentList= new List<Treatment>();
                    foreach (var treatment in treatmentList)
                    {
                       string diseaseName= diseaseManager.GetDiseaseName(treatment.DiseaseId);
                       string medicineName = medicineManager.GetMedicineName(treatment.MedicineId);
                        Treatment aTreatment = new Treatment();
                        aTreatment.NameOfDisease = diseaseName;
                        aTreatment.NameOfMedicine = medicineName;
                        aTreatment.Dose = treatment.Dose;
                        aTreatment.TakenTime = treatment.TakenTime;
                        aTreatment.Quantity = treatment.Quantity;
                        aTreatment.Note = treatment.Note;

                        aTreatmentList.Add(aTreatment);
                    }
                    ShowAllTreatment(centerName, Date, DoctorName, Observation, count, aTreatmentList);
                }
            }
            
           
        }
        public void GetPatientInformation(string voterId) {

            List<Voter> voterList = new List<Voter>();
            using (var client = new WebClient())
            {
                var url = "http://nerdcastlebd.com/web_service/voterdb/index.php/voters/all/format/json";
                var jsonString = client.DownloadString(url);
                var json = new JavaScriptSerializer().Deserialize<dynamic>(jsonString);
                foreach (Dictionary<string, object> voter in json["voters"])
                {
                    Voter aVoter = new Voter();
                    aVoter.Id = voter["id"].ToString();
                    aVoter.Name = voter["name"].ToString();
                    aVoter.Address = voter["address"].ToString();
                    voterList.Add(aVoter);
                }
            }

            //string jsonStringCollection = "[{\"id\":\"5644309456813\",\"name\":\"Rimi Khanom\",\"address\":\"House no: 12. Road no: 14. Dhanmondi, Dhaka\",\"date_of_birth\":\"1979-01-15\"},{\"id\":\"9509623450915\",\"name\":\"Asif Latif\",\"address\":\"House no: 98. Road no: 14. Katalgonj, Chittagong\",\"date_of_birth\":\"1988-07-11\"},{\"id\":\"1098789543218\",\"name\":\"Rakib Hasan\",\"address\":\"Vill. Shantinagar. Thana: Katalgonj, Faridpur\",\"date_of_birth\":\"1982-04-12\"},{\"id\":\"7865409458659\",\"name\":\"Rumon Sarker\",\"address\":\"Kishorginj\",\"date_of_birth\":\"1970-12-02\"},{\"id\":\"8909854343334\",\"name\":\"Gaji Salah Uddin\",\"address\":\"Chittagong\",\"date_of_birth\":\"1965-06-16\"}]";
            //List<Voter> voterList = new JavaScriptSerializer().Deserialize<List<Voter>>(jsonStringCollection);
            foreach (var voter in voterList)
            {

                if (voter.Id.Equals(voterId))
                {
                    nameTextBox.Text = voter.Name;
                    addressTextBox.Text = voter.Address;

                }
            }
        }
    }
}