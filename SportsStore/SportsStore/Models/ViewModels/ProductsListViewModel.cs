using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SportsStore.Models.ViewModels
{
    public class ProductsListViewModel
    {
        public IEnumerable<Product> Products { get; set; }
        public PagingInfo Paging { get; set; }
    }
}