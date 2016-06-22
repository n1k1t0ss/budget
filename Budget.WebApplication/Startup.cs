using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Budget.WebApplication.Startup))]
namespace Budget.WebApplication
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
