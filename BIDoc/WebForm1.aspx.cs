using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Novacode;
namespace BIDoc
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_CreateDoc_Click(object sender, EventArgs e)
        {
            string SaveFileAt = @"D:\Desktop\.net practice modules\BIDoc";
            //this takes the name of the dept
            string FileName = "FinalDoc.docx";
            using (DocX document = DocX.Create(SaveFileAt + FileName))
            {
                Paragraph heading = document.InsertParagraph();
                heading.Append("The BIDiscovery! Workshop")
                    .Font(new System.Drawing.FontFamily("Calibri"))
                    .FontSize(28)
                    .Color(System.Drawing.Color.Blue)
                    .Alignment = Alignment.center;
                    document.Save(); 
            }
        }
    }
}