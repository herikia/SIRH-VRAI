﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using MySql.Data.MySqlClient;

namespace Interface_bienvenue
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        MySqlConnection conn;
        public MainWindow()
        {
            InitializeComponent();
            conn = new MySqlConnection("SERVER=127.0.0.1; DATABASE='sirh'; UID=root; PASSWORD=");
        }

        private void Frame_Navigated(object sender, NavigationEventArgs e)
        {

        }

        private void btnInscrire_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
