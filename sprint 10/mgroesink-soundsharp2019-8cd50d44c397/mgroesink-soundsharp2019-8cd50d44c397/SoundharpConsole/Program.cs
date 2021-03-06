﻿using AudioDevices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SoundharpConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            // Maak een track aan
            Track t1 = new Track();
            // Maak een time aan
            Time time1 = new Time(400);
            // Voeg de tijd toe aan de track
            t1.Length = time1;
            // Stel de stijl in
            t1.Type = Category.HipHop;
            // Voeg nog 3 tracks toe met behulp van verschillende
            // constructors
            Track t2 = new Track(2);
            Track t3 = new Track(3, "Yellow");
            Track t4 = new Track(4, "Draait om", "Boef");
            Console.WriteLine(t4.DisplayName);
            Console.ReadLine();
            
        }
    }
}
