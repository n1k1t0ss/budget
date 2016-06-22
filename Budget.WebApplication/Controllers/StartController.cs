using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Budget.Dal;

namespace Budget.WebApplication.Controllers
{
    public class StartController : Controller
    {
        // GET: Start
        public ActionResult Index()
        {
            //var r = new RepositoryBase();
            //return r.GetOperations();

            var e = new BudgetEntities();
            return View(e.Operation.ToList());
        }
    }
}