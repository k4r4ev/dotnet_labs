using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Office.Interop.Word;

namespace LAB_11_pro
{
    public partial class sotr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var app = new Microsoft.Office.Interop.Word.Application();
            app.Visible = true;
            var doc = app.Documents.Add();
            var r = doc.Range();
            Object defaultTableBehavior = Type.Missing;
            Object autoFitBehavior = Type.Missing;
            Microsoft.Office.Interop.Word.Table tbl = r.Tables.Add(r, 1, 4, ref defaultTableBehavior, ref autoFitBehavior);
            tbl.Range.Font.Size = 14;
            Object style = "Сетка таблицы";
            tbl.set_Style(ref style);
            tbl.Cell(1, 1).Range.Text = "Код сотрудника";
            tbl.Cell(1, 2).Range.Text = "Тип работы";
            tbl.Cell(1, 3).Range.Text = "Дата старта";
            tbl.Cell(1, 4).Range.Text = "Дата конца";
            int i = 1;
            foreach (GridViewRow element in GridView1.Rows)
            {
                Object beforeRow = Type.Missing;
                tbl.Rows.Add(ref beforeRow);
                tbl.Cell(i + 1, 1).Range.Text = Convert.ToString(element.Cells[0].Text);
                tbl.Cell(i + 1, 2).Range.Text = Convert.ToString(element.Cells[1].Text);
                tbl.Cell(i + 1, 3).Range.Text = Convert.ToString(element.Cells[2].Text);
                tbl.Cell(i + 1, 4).Range.Text = Convert.ToString(element.Cells[3].Text);
                i++;
            }

        }
    }
}