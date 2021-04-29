using Microsoft.EntityFrameworkCore;
using SQLCloud.Domain.Models;

namespace SQLCloud.Infrastructure
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions options) : base(options)
        {
        }

        public DbSet<Person> People { get; set; }
    }
}