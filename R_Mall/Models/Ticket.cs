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
    
    public partial class Ticket
    {
        public int T_Id { get; set; }
        public Nullable<int> T_Price { get; set; }
        public Nullable<int> st_Id { get; set; }
        public Nullable<int> M_Id { get; set; }
    
        public virtual Movy Movy { get; set; }
        public virtual Seat Seat { get; set; }
    }
}