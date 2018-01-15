using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BIDoc
{

    public class BiDocument
    {
        public List<Unit> Units = new List<Unit>(); 
        
    }
    public class Unit
    {
        public string ID { get; set; }
        public string Title { get; set; }
        public string Body { get; set; }
        public Setting Settings { get { return new Setting(); } set { this.Settings = value;  } } 
        public bool IsHeading { get; set; }
        public Unit SubUnit { get; set; }
    }

    public class Setting
    {
        //Constructor with Default Values 
        public Setting()
        {
            this.TitleColor = "Red"; 
            this.TitleSize = 24;
            this.ParagraphColor = "Black";
            this.ParagraphSize = 14;
            this.ParaMarginAfter = 10;
            this.ParaMarginBefore = 10; 
        }
        public int TitleSize {get; set;}
        public string TitleColor {get; set;}
        public int ParagraphSize {get; set;}
        public string ParagraphColor {get; set;}
        public string FontType {get; set;}
        public int ParaMarginBefore { get; set; }
        public int ParaMarginAfter { get; set; }
    }



    public class FormData
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public string Value { get; set; }
        public string TextType { get; set; }
    }
}