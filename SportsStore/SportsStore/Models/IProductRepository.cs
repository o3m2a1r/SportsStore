using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SportsStore.Models
{
    public interface IProductRepository
    {
        IEnumerable<Product> Products { get; }
    }
}
