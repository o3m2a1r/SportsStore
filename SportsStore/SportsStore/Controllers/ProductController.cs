using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SportsStore.Models;

namespace SportsStore.Controllers
{
    public class ProductController : Controller
    {
        private IProductRepository repository;

        public ActionResult List()
        {
            repository = new FakeProductRepository();
            return View(repository.Products);
        }

    }
}
