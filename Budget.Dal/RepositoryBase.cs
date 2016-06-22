using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Budget.Dal
{
    public class RepositoryBase
    {

        public RepositoryBase()
        {
            DbContext = new BudgetEntities();
        }

        #region Fields & Properties
        protected BudgetEntities DbContext { get; private set; }
        #endregion Fields & Properties

        public List<Operation> GetOperations()
        {
            return DbContext.Operation.ToList();
        }


        public Category GetCategory(int id)
        {
            return DbContext.Category.FirstOrDefault(o => o.Id == id);
        }

    }
}
