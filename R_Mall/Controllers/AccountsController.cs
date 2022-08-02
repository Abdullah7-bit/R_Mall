using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using R_Mall.Models;

namespace R_Mall.Controllers
{
    public class AccountsController : Controller
    {
        RmallEntities db = new RmallEntities();

        // GET: Accounts
        public ActionResult Login()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Login(User u)
        {
            var query = db.Users.SingleOrDefault(m => m.username == u.username && m.password == u.password);

            if (query != null)
            {
                return RedirectToAction("Admin", "Admin");
            }
            else
            {
                ViewBag.msg = "Invalid Username or Password";
            }
            return View();
        }

        public ActionResult Logout()
        {
            Session.Abandon();

            return RedirectToAction("Index");
        }
    }
}