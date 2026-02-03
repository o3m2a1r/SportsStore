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

        public int pageSize = 4;

        public ActionResult List(int page = 1)
        {
            repository = new DeserializedProductRepository();
            return View(repository.Products.OrderBy(p => p.ProductID).Skip((page-1)*pageSize).Take(pageSize));
        }

    }
}
