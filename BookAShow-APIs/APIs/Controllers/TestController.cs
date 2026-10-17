using APIs.Database;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace APIs.Controllers
{
    [Route("api/test")]
    [ApiController]
    public class TestController : ControllerBase
    {
        private readonly AppDbContext appDbContext;

        public TestController(AppDbContext appDbContext)
        {
            this.appDbContext = appDbContext;
        }

        [HttpGet("getdata")]
        public IActionResult Get()
        {
            var theaters = appDbContext.Theaters
                            .Include(x => x.Shows)
                            .ThenInclude(y => y.Seats)
                            .ToList();
            return Ok(theaters);
        }
    }
}
