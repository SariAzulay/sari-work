using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleApp1
{
    class RecursiveDigitSum
    {

        public static int SuperDigit(string n, int k)
        {
            if (n.Length == 1)
                return int.Parse(n);
            int sum = 0;
            for (int i = 0; i < n.Length; i++)
            {
                sum += int.Parse(n.Substring(i, 1));
            }
            if (k != 0)
            {
                sum = sum * k;
                k = 0;
            }
            return SuperDigit(n = sum.ToString(), 0);

        }
        static void Main(string[] args)
        {
            int k = 4;
            string s = "985";
            Console.WriteLine(SuperDigit(s, k));
        }
    }
}

