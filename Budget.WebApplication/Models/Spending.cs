using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Budget.WebApplication.Models
{
    /// <summary>
    /// Расход средств
    /// </summary>
    public class Spending
    {
        public int Id { get; set; }
        public decimal Ammount { get; set; }
        public DateTime Date { get; set; }

        ///// <summary>
        ///// Плановая трата
        ///// </summary>
        //public int? PlanId { get; set; }

        ///// <summary>
        ///// Долг
        ///// </summary>
        //public int? DebtId { get; set; } 
    }
}