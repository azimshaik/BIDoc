using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls; 
using Novacode;
using System.Web.Script.Serialization;
using System.Web.Services;
namespace BIDoc
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static string OutputFileLocation = "";
        public static string OutputFileName = "BIOutputDoc.docx"; 

        protected void Page_Load(object sender, EventArgs e)
        {
            OutputFileLocation = Request.PhysicalApplicationPath; 
        }
        
        [WebMethod]
        public static string SubmitForm(List<FormData> FormData)
        {
            string messsage = "Sucess";
            try
            {
                
                BiDocument biDoc = new BiDocument();

                foreach(FormData fd in FormData)
                {
                    Unit u = new Unit();
                    u.ID = fd.ID;
                    u.Body = fd.Value;
                    biDoc.Units.Add(u);
                }

                using (DocX document = DocX.Create(OutputFileLocation + OutputFileName))
                {
                    foreach (Unit u in biDoc.Units)
                    {
                        Paragraph heading = document.InsertParagraph();
                        heading.Append(u.Body)
                            .Font(new System.Drawing.FontFamily("Calibri"))
                            .FontSize(16)
                            .Color(System.Drawing.Color.Blue); 
                           // .Alignment = Alignment.center;
                    }
                    document.Save();

                }
            }
            catch (Exception ex)
            {

            }
            return messsage; 
        }

        protected void Btn_CreateDoc_Click(object sender, EventArgs e)
        {

        }
    }
}