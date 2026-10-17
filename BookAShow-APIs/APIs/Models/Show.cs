//using System;

namespace APIs.Models
{
    public class Show
    {
        public int Id { get; set; }

        public int TheaterId { get; set; }

        public string Title { get; set; }

        public DateTime StartAt { get; set; }

        public ICollection<Seat> Seats { get; set; } = new List<Seat>();
    }
}
