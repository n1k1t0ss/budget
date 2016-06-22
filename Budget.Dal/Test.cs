using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Budget.Dal
{
    class Test 
    {
        private BudgetEntities Connection { get; set; }

        public Operation TestM(int id)
        {
            return Connection.Operation.Single(o => o.Id == id);
        }
    }
}
