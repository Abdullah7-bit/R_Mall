//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace R_Mall.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        public int Order_Id { get; set; }
        public Nullable<int> Order_Number { get; set; }
        public Nullable<int> T_Id { get; set; }
        public Nullable<int> Menu_Id { get; set; }
    
        public virtual Menu Menu { get; set; }
        public virtual Table Table { get; set; }
    }
}
