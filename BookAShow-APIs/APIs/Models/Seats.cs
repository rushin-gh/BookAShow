using APIs.Enums;

namespace APIs.Models
{
    public class Seat
    {
        public int Id { get; set; }

        public int ShowId { get; set; }

        public int RowNum { get; set; }

        public SeatState SeatNum { get; set; }

        // For example: 0 = Available, 1 = Held, 2 = Booked
        public int State { get; set; }

        public DateTime? HeldUntil { get; set; }

        public string? HeldBy { get; set; }

        public byte[] RowVersion { get; set; } = Array.Empty<byte>();
    }
}