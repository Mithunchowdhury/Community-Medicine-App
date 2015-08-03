using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CommunityMedicineAutomation.DAL;
using CommunityMedicineAutomation.Model;

namespace CommunityMedicineAutomation.BLL
{
    public class DiseaseManager
    {
        DiseaseGateway diseaseGateway=new DiseaseGateway();

        public string SaveDisease(Disease aDisease)
        {
            int value = diseaseGateway.SaveDisease(aDisease);

            if (value > 0)
            {
                return "Disease Has Been Saved";
            }
            else return "Failed";
        }

        public List<Disease> GetAllDiseases()
        {
            return diseaseGateway.GetAllDiseases();
        }
        public string GetDiseaseName(int diseaseId)
        {
            return diseaseGateway.GetDiseaseName(diseaseId);
        }
    }
}