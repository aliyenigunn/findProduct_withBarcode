using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace barkodTest
{
    public partial class Default : System.Web.UI.Page
    {
        LKSDBDataContext con = new LKSDBDataContext();
        private int logicalRef;
        protected void Page_Load(object sender, EventArgs e)
        {
            urunBarkodu.Focus();
        }

        protected void urunBarkodu_TextChanged(object sender, EventArgs e)
        {
            getProduct(urunBarkodu.Text);
            urunBarkodu.Text = "";
            
        }

        void getProduct(string barkod)
        {
            try
            {
                con = new LKSDBDataContext();
                try
                {
                    LG_120_UNITBARCODE b = con.LG_120_UNITBARCODEs.FirstOrDefault(x => x.BARCODE == barkod);
                    LG_120_ITEM itm = con.LG_120_ITEMs.FirstOrDefault(x => x.LOGICALREF == b.ITEMREF);
                    urunAdi.InnerText = itm.CODE + " " + itm.NAME;
                    barcode.InnerText = urunBarkodu.Text;
                    logicalRef = itm.LOGICALREF;
                }
                catch (Exception ew)
                {
                    urunAdi.InnerText = ew.Message;
                }
            }
            catch (Exception ex)
            {
                urunAdi.InnerText = ex.Message;
            }
        }
    }
}