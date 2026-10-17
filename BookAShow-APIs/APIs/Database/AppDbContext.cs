using Microsoft.EntityFrameworkCore;
using APIs.Models;

namespace APIs.Database
{
    public class AppDbContext :DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
        }

        public DbSet<Theater> Theaters { get; set; }

        public DbSet<Show> Shows { get; set; }

        public DbSet<Seat> Seats { get; set; }


    }
}
