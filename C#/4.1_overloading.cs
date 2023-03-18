using System;
namespace DemoCsharp
{
    class Program
    {
        public int Add(int num1, int num2)
        {
            return (num1 + num2);
        }
        public int Add(int num1, int num2, int num3)
        {
            return (num1 + num2 + num3);
        }
        public float Add(float num1, float num2)
        {
            return (num1 + num2);
        }
        public string Add(string value1, string value2)
        {
            return (value1 + " " + value2);
        }
        static void Main(string[] args)
        {
            Program objProgram = new Program();
            Console.WriteLine("Add with two int parameter :" + objProgram.Add(3, 2));
            Console.WriteLine("Add with three int parameter :" + objProgram.Add(3, 2, 8));
            Console.WriteLine("Add with two float parameter :" + objProgram.Add(3 f, 22 f));
            Console.WriteLine("Add with two string parameter :" + objProgram.Add("hello", "world"));
            Console.ReadLine();
        }
    }
}