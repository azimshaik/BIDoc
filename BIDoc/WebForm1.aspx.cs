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

                    if(fd.TextType == "h")
                    {
                        u.IsHeading = true; 
                    }

                    biDoc.Units.Add(u);
                    
                }

                using (DocX document = DocX.Create(OutputFileLocation + OutputFileName))
                {
                    foreach (Unit u in biDoc.Units)
                    {
                        if (!String.IsNullOrEmpty(u.Body))
                        {
                            Paragraph heading = document.InsertParagraph();
                            heading.Append(u.Body)
                                .Font(new System.Drawing.FontFamily("Calibri"));
                            if (u.IsHeading)
                            {
                                heading.FontSize(u.Settings.TitleSize)
                                    .Color(System.Drawing.Color.Blue)
                                    .SpacingAfter(30);
                            }
                            else
                            {
                                heading.FontSize(u.Settings.ParagraphSize)
                                    .Color(System.Drawing.Color.Black)
                                    .SpacingAfter(u.Settings.ParaMarginAfter)
                                    .SpacingBefore(u.Settings.ParaMarginBefore);
                            }
                            // .Alignment = Alignment.center;
                        }
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