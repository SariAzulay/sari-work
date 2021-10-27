using System;

namespace ConsoleApp1
{
    using System;
    using System.Collections.Generic;
    using System.Text;

    namespace ConsoleApp2
    {
        class MinMax
        {
            //If the array was not a fixed value I would use mergeSort
            public static string MinMaxSum(int[] arr)
            {
                if (arr.Length == 0)
                    return "0 0";
                long MinMax = 0;
                int max = 0;
                int min = 0;
                for (int i = 0; i < 5; i++)
                {
                    MinMax += arr[i];
                    if (i == 0)
                    {
                        max = arr[i];
                        min = arr[i];
                    }
                    else
                    {
                        if (arr[i] > max)
                            max = arr[i];
                        else
                        {
                            if (arr[i] < min)
                                min = arr[i];
                        }
                    }
                }
                return (MinMax - max).ToString() + " " + (MinMax - min).ToString();

            }


            static void Main(string[] args)
            {
                int[] arr = { 1, 3, 5, 7, 9 };
                Console.WriteLine(MinMaxSum(arr));
            }


        }
    }

}
