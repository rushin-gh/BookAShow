using System.Collections;

namespace APIs.Models
{
    public class Theater
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string City { get; set; }

        public ICollection<Show> Shows { get; set; } = new List<Show>();
    }
}
