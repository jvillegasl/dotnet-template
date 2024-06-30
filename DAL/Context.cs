using ef_local_db.DAL.Models;
using Microsoft.EntityFrameworkCore;

namespace ef_local_db.DAL;

public class BloggingContext(DbContextOptions<BloggingContext> options) : DbContext(options)
{
    public DbSet<Blog> Blogs { get; set; }
    public DbSet<Post> Posts { get; set; }
}
