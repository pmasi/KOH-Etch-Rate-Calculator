//
//  ViewController.swift
//  KOH Etch Rate Calculator
//
//  Created by Paul MD on 7/12/15.
//  Copyright (c) 2015 Paul MD. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    // Temp and weight percent picker data
    let TempPickerData = ["20\u{00B0}","25\u{00B0}","30\u{00B0}","35\u{00B0}","40\u{00B0}","45\u{00B0}","50\u{00B0}","55\u{00B0}","60\u{00B0}","65\u{00B0}", "70\u{00B0}","75\u{00B0}","80\u{00B0}","85\u{00B0}","90\u{00B0}","95\u{00B0}","100\u{00B0}"]
    let WeightPickerData = ["10%","15%","20%","25%","30%","35%","40%","45%","50%"]
    var T = 0
    var W = 0

    // Set temp and weight percent picker delegates and data sources on viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        TempPicker.dataSource = self
        TempPicker.delegate = self
        WeightPicker.dataSource = self
        WeightPicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Set navigation bar properties on the viewWillAppear
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.title = ""
        var nav = self.navigationController?.navigationBar
        nav?.barTintColor = UIColor(red: 59.0/255.0, green: 129.0/255.0, blue: 131.0/255.0, alpha: 1.0)
        nav?.tintColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // PrepareForSegue for AboutViewController
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "AboutSegue" {
            navigationItem.title = "Back"
        }
    }

    // Etch rate outlets
    @IBOutlet weak var Outlet100: UITextField!
    @IBOutlet weak var Outlet110: UITextField!
    @IBOutlet weak var Outlet111: UITextField!
    @IBOutlet weak var OutletSiO2: UITextField!

    // Picker outlets (for temp and weight percent)
    @IBOutlet weak var TempPicker: UIPickerView!
    @IBOutlet weak var WeightPicker: UIPickerView!
    
    // Following 3 functions set up both pickers with temp and weight percent values
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == TempPicker {
            return TempPickerData.count
        }
        else {
            return WeightPickerData.count
        }
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        if pickerView == TempPicker {
            return TempPickerData[row]
        }
        else {
            return WeightPickerData[row]
        }
    }
    
    // This function determines which rows in the UIPickers are selected and outputs it to T and W
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == TempPicker {
            T = 0
            T += row
        }
        if pickerView == WeightPicker {
            W = 0
            W += row
        }
        if T == 0 && W == 0 {
            Outlet100.text = "1.501"
            Outlet110.text = "2.234"
            Outlet111.text = "5.32E-2"
            OutletSiO2.text = "4.05E-4"
        }
        if T == 0 && W == 1 {
            Outlet100.text = "1.569"
            Outlet110.text = "2.336"
            Outlet111.text = "5.20E-2"
            OutletSiO2.text = "6.32E-4"
        }
        if T == 0 && W == 2 {
            Outlet100.text = "1.571"
            Outlet110.text = "2.338"
            Outlet111.text = "4.80E-2"
            OutletSiO2.text = "8.78E-4"
        }
        if T == 0 && W == 3 {
            Outlet100.text = "1.523"
            Outlet110.text = "2.268"
            Outlet111.text = "4.23E-2"
            OutletSiO2.text = "1.14E-3"
        }
        if T == 0 && W == 4 {
            Outlet100.text = "1.437"
            Outlet110.text = "2.139"
            Outlet111.text = "3.56E-2"
            OutletSiO2.text = "1.43E-3"
        }
        if T == 0 && W == 5 {
            Outlet100.text = "1.318"
            Outlet110.text = "1.962"
            Outlet111.text = "2.85E-2"
            OutletSiO2.text = "1.44E-3"
        }
        if T == 0 && W == 6 {
            Outlet100.text = "1.175"
            Outlet110.text = "1.749"
            Outlet111.text = "2.17E-2"
            OutletSiO2.text = "1.33E-3"
        }
        if T == 0 && W == 7 {
            Outlet100.text = "1.015"
            Outlet110.text = "1.510"
            Outlet111.text = "1.56E-2"
            OutletSiO2.text = "1.21E-3"
        }
        if T == 0 && W == 8 {
            Outlet100.text = "8.45E-1"
            Outlet110.text = "1.258"
            Outlet111.text = "1.04E-2"
            OutletSiO2.text = "1.08E-3"
        }
        
        if T == 1 && W == 0 {
            Outlet100.text = "2.228"
            Outlet110.text = "3.327"
            Outlet111.text = "7.37E-2"
            OutletSiO2.text = "7.12E-4"
        }
        if T == 1 && W == 1 {
            Outlet100.text = "2.329"
            Outlet110.text = "3.479"
            Outlet111.text = "7.20E-2"
            OutletSiO2.text = "1.11E-3"
        }
        if T == 1 && W == 2 {
            Outlet100.text = "2.332"
            Outlet110.text = "3.483"
            Outlet111.text = "6.65E-2"
            OutletSiO2.text = "1.54E-3"
        }
        if T == 1 && W == 3 {
            Outlet100.text = "2.261"
            Outlet110.text = "3.378"
            Outlet111.text = "5.86E-2"
            OutletSiO2.text = "2.01E-3"
        }
        if T == 1 && W == 4 {
            Outlet100.text = "2.133"
            Outlet110.text = "3.186"
            Outlet111.text = "4.93E-2"
            OutletSiO2.text = "2.51E-3"
        }
        if T == 1 && W == 5 {
            Outlet100.text = "1.957"
            Outlet110.text = "2.923"
            Outlet111.text = "3.95E-2"
            OutletSiO2.text = "2.53E-3"
        }
        if T == 1 && W == 6 {
            Outlet100.text = "1.744"
            Outlet110.text = "2.605"
            Outlet111.text = "3.01E-2"
            OutletSiO2.text = "2.33E-3"
        }
        if T == 1 && W == 7 {
            Outlet100.text = "1.506"
            Outlet110.text = "2.250"
            Outlet111.text = "2.15E-2"
            OutletSiO2.text = "2.13E-3"
        }
        if T == 1 && W == 8 {
            Outlet100.text = "1.254"
            Outlet110.text = "1.873"
            Outlet111.text = "1.44E-2"
            OutletSiO2.text = "1.90E-3"
        }
        
        if T == 2 && W == 0 {
            Outlet100.text = "3.264"
            Outlet110.text = "4.891"
            Outlet111.text = "1.01E-1"
            OutletSiO2.text = "1.23E-3"
        }
        if T == 2 && W == 1 {
            Outlet100.text = "3.412"
            Outlet110.text = "5.113"
            Outlet111.text = "9.86E-2"
            OutletSiO2.text = "1.92E-3"
        }
        if T == 2 && W == 2 {
            Outlet100.text = "3.416"
            Outlet110.text = "5.119"
            Outlet111.text = "9.10E-2"
            OutletSiO2.text = "2.66E-3"
        }
        if T == 2 && W == 3 {
            Outlet100.text = "3.313"
            Outlet110.text = "4.965"
            Outlet111.text = "8.02E-2"
            OutletSiO2.text = "3.47E-3"
        }
        if T == 2 && W == 4 {
            Outlet100.text = "3.125"
            Outlet110.text = "4.683"
            Outlet111.text = "6.75E-2"
            OutletSiO2.text = "4.33E-3"
        }
        if T == 2 && W == 5 {
            Outlet100.text = "2.867"
            Outlet110.text = "4.296"
            Outlet111.text = "5.41E-2"
            OutletSiO2.text = "4.36E-3"
        }
        if T == 2 && W == 6 {
            Outlet100.text = "2.556"
            Outlet110.text = "3.830"
            Outlet111.text = "4.12E-2"
            OutletSiO2.text = "4.03E-3"
        }
        if T == 2 && W == 7 {
            Outlet100.text = "2.207"
            Outlet110.text = "3.307"
            Outlet111.text = "2.95E-2"
            OutletSiO2.text = "3.67E-3"
        }
        if T == 2 && W == 8 {
            Outlet100.text = "1.838"
            Outlet110.text = "2.754"
            Outlet111.text = "1.97E-2"
            OutletSiO2.text = "3.29E-3"
        }
        
        if T == 3 && W == 0 {
            Outlet100.text = "4.723"
            Outlet110.text = "7.100"
            Outlet111.text = "1.37E-1"
            OutletSiO2.text = "2.08E-3"
        }
        if T == 3 && W == 1 {
            Outlet100.text = "4.938"
            Outlet110.text = "7.423"
            Outlet111.text = "1.34E-1"
            OutletSiO2.text = "3.26E-3"
        }
        if T == 3 && W == 2 {
            Outlet100.text = "4.944"
            Outlet110.text = "7.432"
            Outlet111.text = "1.24E-1"
            OutletSiO2.text = "4.52E-3"
        }
        if T == 3 && W == 3 {
            Outlet100.text = "4.795"
            Outlet110.text = "7.208"
            Outlet111.text = "1.09E-1"
            OutletSiO2.text = "5.88E-3"
        }
        if T == 3 && W == 4 {
            Outlet100.text = "4.522"
            Outlet110.text = "6.797"
            Outlet111.text = "9.15E-2"
            OutletSiO2.text = "7.35E-3"
        }
        if T == 3 && W == 5 {
            Outlet100.text = "4.149"
            Outlet110.text = "6.237"
            Outlet111.text = "7.34E-2"
            OutletSiO2.text = "7.39E-3"
        }
        if T == 3 && W == 6 {
            Outlet100.text = "3.698"
            Outlet110.text = "5.559"
            Outlet111.text = "5.58E-2"
            OutletSiO2.text = "6.83E-3"
        }
        if T == 3 && W == 7 {
            Outlet100.text = "3.193"
            Outlet110.text = "4.800"
            Outlet111.text = "4.00E-2"
            OutletSiO2.text = "6.22E-3"
        }
        if T == 3 && W == 8 {
            Outlet100.text = "2.659"
            Outlet110.text = "3.997"
            Outlet111.text = "2.67E-2"
            OutletSiO2.text = "5.57E-3"
        }
        
        if T == 4 && W == 0 {
            Outlet100.text = "6.755"
            Outlet110.text = "10.18"
            Outlet111.text = "1.83E-1"
            OutletSiO2.text = "3.47E-3"
        }
        if T == 4 && W == 1 {
            Outlet100.text = "7.062"
            Outlet110.text = "10.65"
            Outlet111.text = "1.80E-1"
            OutletSiO2.text = "5.43E-3"
        }
        if T == 4 && W == 2 {
            Outlet100.text = "7.071"
            Outlet110.text = "10.66"
            Outlet111.text = "1.66E-1"
            OutletSiO2.text = "7.53E-3"
        }
        if T == 4 && W == 3 {
            Outlet100.text = "6.858"
            Outlet110.text = "10.34"
            Outlet111.text = "1.46E-1"
            OutletSiO2.text = "9.81E-3"
        }
        if T == 4 && W == 4 {
            Outlet100.text = "6.467"
            Outlet110.text = "9.751"
            Outlet111.text = "1.23E-1"
            OutletSiO2.text = "1.23E-2"
        }
        if T == 4 && W == 5 {
            Outlet100.text = "5.934"
            Outlet110.text = "8.946"
            Outlet111.text = "9.85E-2"
            OutletSiO2.text = "1.23E-2"
        }
        if T == 4 && W == 6 {
            Outlet100.text = "5.289"
            Outlet110.text = "7.975"
            Outlet111.text = "7.49E-2"
            OutletSiO2.text = "1.14E-2"
        }
        if T == 4 && W == 7 {
            Outlet100.text = "4.567"
            Outlet110.text = "6.886"
            Outlet111.text = "5.37E-2"
            OutletSiO2.text = "1.04E-2"
        }
        if T == 4 && W == 8 {
            Outlet100.text = "3.803"
            Outlet110.text = "5.734"
            Outlet111.text = "3.59E-2"
            OutletSiO2.text = "9.29E-3"
        }
        
        if T == 5 && W == 0 {
            Outlet100.text = "9.553"
            Outlet110.text = "14.44"
            Outlet111.text = "2.44E-1"
            OutletSiO2.text = "5.70E-3"
        }
        if T == 5 && W == 1 {
            Outlet100.text = "9.987"
            Outlet110.text = "15.10"
            Outlet111.text = "2.39E-1"
            OutletSiO2.text = "8.90E-3"
        }
        if T == 5 && W == 2 {
            Outlet100.text = "9.999"
            Outlet110.text = "15.12"
            Outlet111.text = "2.21E-1"
            OutletSiO2.text = "1.24E-2"
        }
        if T == 5 && W == 3 {
            Outlet100.text = "9.698"
            Outlet110.text = "14.66"
            Outlet111.text = "1.94E-1"
            OutletSiO2.text = "1.61E-2"
        }
        if T == 5 && W == 4 {
            Outlet100.text = "9.146"
            Outlet110.text = "13.83"
            Outlet111.text = "1.63E-1"
            OutletSiO2.text = "2.01E-2"
        }
        if T == 5 && W == 5 {
            Outlet100.text = "8.391"
            Outlet110.text = "12.69"
            Outlet111.text = "1.31E-1"
            OutletSiO2.text = "2.02E-2"
        }
        if T == 5 && W == 6 {
            Outlet100.text = "7.480"
            Outlet110.text = "11.31"
            Outlet111.text = "9.97E-2"
            OutletSiO2.text = "1.87E-2"
        }
        if T == 5 && W == 7 {
            Outlet100.text = "6.459"
            Outlet110.text = "9.766"
            Outlet111.text = "7.14E-2"
            OutletSiO2.text = "1.70E-2"
        }
        if T == 5 && W == 8 {
            Outlet100.text = "5.378"
            Outlet110.text = "8.133"
            Outlet111.text = "4.77E-2"
            OutletSiO2.text = "1.52E-2"
        }
        
        if T == 6 && W == 0 {
            Outlet100.text = "13.37"
            Outlet110.text = "20.27"
            Outlet111.text = "3.22E-1"
            OutletSiO2.text = "9.21E-3"
        }
        if T == 6 && W == 1 {
            Outlet100.text = "13.97"
            Outlet110.text = "21.19"
            Outlet111.text = "3.15E-1"
            OutletSiO2.text = "1.44E-2"
        }
        if T == 6 && W == 2 {
            Outlet100.text = "13.99"
            Outlet110.text = "21.21"
            Outlet111.text = "2.91E-1"
            OutletSiO2.text = "2.00E-2"
        }
        if T == 6 && W == 3 {
            Outlet100.text = "13.57"
            Outlet110.text = "20.57"
            Outlet111.text = "2.56E-1"
            OutletSiO2.text = "2.60E-2"
        }
        if T == 6 && W == 4 {
            Outlet100.text = "12.80"
            Outlet110.text = "19.40"
            Outlet111.text = "2.16E-1"
            OutletSiO2.text = "3.25E-2"
        }
        if T == 6 && W == 5 {
            Outlet100.text = "11.74"
            Outlet110.text = "17.80"
            Outlet111.text = "1.73E-1"
            OutletSiO2.text = "3.27E-2"
        }
        if T == 6 && W == 6 {
            Outlet100.text = "10.46"
            Outlet110.text = "15.87"
            Outlet111.text = "1.31E-1"
            OutletSiO2.text = "3.02E-2"
        }
        if T == 6 && W == 7 {
            Outlet100.text = "9.036"
            Outlet110.text = "13.70"
            Outlet111.text = "9.42E-2"
            OutletSiO2.text = "2.75E-2"
        }
        if T == 6 && W == 8 {
            Outlet100.text = "7.525"
            Outlet110.text = "11.41"
            Outlet111.text = "6.30E-2"
            OutletSiO2.text = "2.46E-2"
        }
        
        if T == 7 && W == 0 {
            Outlet100.text = "18.51"
            Outlet110.text = "28.14"
            Outlet111.text = "4.21E-1"
            OutletSiO2.text = "1.47E-2"
        }
        if T == 7 && W == 1 {
            Outlet100.text = "19.35"
            Outlet110.text = "29.42"
            Outlet111.text = "4.12E-1"
            OutletSiO2.text = "2.29E-2"
        }
        if T == 7 && W == 2 {
            Outlet100.text = "19.37"
            Outlet110.text = "29.46"
            Outlet111.text = "3.80E-1"
            OutletSiO2.text = "3.18E-2"
        }
        if T == 7 && W == 3 {
            Outlet100.text = "18.79"
            Outlet110.text = "28.57"
            Outlet111.text = "3.35E-1"
            OutletSiO2.text = "4.14E-2"
        }
        if T == 7 && W == 4 {
            Outlet100.text = "17.72"
            Outlet110.text = "26.94"
            Outlet111.text = "2.82E-1"
            OutletSiO2.text = "5.17E-2"
        }
        if T == 7 && W == 5 {
            Outlet100.text = "16.26"
            Outlet110.text = "24.72"
            Outlet111.text = "2.26E-1"
            OutletSiO2.text = "5.20E-2"
        }
        if T == 7 && W == 6 {
            Outlet100.text = "14.49"
            Outlet110.text = "22.04"
            Outlet111.text = "1.72E-1"
            OutletSiO2.text = "4.80E-2"
        }
        if T == 7 && W == 7 {
            Outlet100.text = "12.51"
            Outlet110.text = "19.03"
            Outlet111.text = "1.23E-1"
            OutletSiO2.text = "4.38E-2"
        }
        if T == 7 && W == 8 {
            Outlet100.text = "10.42"
            Outlet110.text = "15.84"
            Outlet111.text = "8.24E-2"
            OutletSiO2.text = "3.92E-2"
        }
        
        if T == 8 && W == 0 {
            Outlet100.text = "25.38"
            Outlet110.text = "38.70"
            Outlet111.text = "5.46E-1"
            OutletSiO2.text = "2.30E-2"
        }
        if T == 8 && W == 1 {
            Outlet100.text = "26.54"
            Outlet110.text = "40.46"
            Outlet111.text = "5.34E-1"
            OutletSiO2.text = "3.60E-2"
        }
        if T == 8 && W == 2 {
            Outlet100.text = "26.57"
            Outlet110.text = "40.50"
            Outlet111.text = "4.93E-1"
            OutletSiO2.text = "4.99E-2"
        }
        if T == 8 && W == 3 {
            Outlet100.text = "25.77"
            Outlet110.text = "39.28"
            Outlet111.text = "4.34E-1"
            OutletSiO2.text = "6.50E-2"
        }
        if T == 8 && W == 4 {
            Outlet100.text = "24.30"
            Outlet110.text = "37.05"
            Outlet111.text = "3.65E-1"
            OutletSiO2.text = "8.12E-2"
        }
        if T == 8 && W == 5 {
            Outlet100.text = "22.29"
            Outlet110.text = "33.99"
            Outlet111.text = "2.93E-1"
            OutletSiO2.text = "8.16E-2"
        }
        if T == 8 && W == 6 {
            Outlet100.text = "19.87"
            Outlet110.text = "30.30"
            Outlet111.text = "2.23E-1"
            OutletSiO2.text = "7.54E-2"
        }
        if T == 8 && W == 7 {
            Outlet100.text = "17.16"
            Outlet110.text = "26.16"
            Outlet111.text = "1.60E-1"
            OutletSiO2.text = "6.87E-2"
        }
        if T == 8 && W == 8 {
            Outlet100.text = "14.29"
            Outlet110.text = "21.79"
            Outlet111.text = "1.07E-1"
            OutletSiO2.text = "6.16E-2"
        }
        
        if T == 9 && W == 0 {
            Outlet100.text = "34.48"
            Outlet110.text = "52.71"
            Outlet111.text = "7.03E-1"
            OutletSiO2.text = "3.57E-2"
        }
        if T == 9 && W == 1 {
            Outlet100.text = "36.05"
            Outlet110.text = "55.11"
            Outlet111.text = "6.88E-1"
            OutletSiO2.text = "5.57E-2"
        }
        if T == 9 && W == 2 {
            Outlet100.text = "36.09"
            Outlet110.text = "55.17"
            Outlet111.text = "6.35E-1"
            OutletSiO2.text = "7.73E-2"
        }
        if T == 9 && W == 3 {
            Outlet100.text = "35.01"
            Outlet110.text = "53.51"
            Outlet111.text = "5.59E-1"
            OutletSiO2.text = "1.01E-1"
        }
        if T == 9 && W == 4 {
            Outlet100.text = "33.01"
            Outlet110.text = "50.46"
            Outlet111.text = "4.70E-1"
            OutletSiO2.text = "1.26E-1"
        }
        if T == 9 && W == 5 {
            Outlet100.text = "30.29"
            Outlet110.text = "46.30"
            Outlet111.text = "3.77E-1"
            OutletSiO2.text = "1.26E-1"
        }
        if T == 9 && W == 6 {
            Outlet100.text = "27.00"
            Outlet110.text = "41.27"
            Outlet111.text = "2.87E-1"
            OutletSiO2.text = "1.17E-1"
        }
        if T == 9 && W == 7 {
            Outlet100.text = "23.31"
            Outlet110.text = "35.64"
            Outlet111.text = "2.06E-1"
            OutletSiO2.text = "1.06E-1"
        }
        if T == 9 && W == 8 {
            Outlet100.text = "19.41"
            Outlet110.text = "29.68"
            Outlet111.text = "1.38E-1"
            OutletSiO2.text = "9.54E-2"
        }
        
        if T == 10 && W == 0 {
            Outlet100.text = "46.43"
            Outlet110.text = "71.15"
            Outlet111.text = "8.98E-1"
            OutletSiO2.text = "5.46E-2"
        }
        if T == 10 && W == 1 {
            Outlet100.text = "48.54"
            Outlet110.text = "74.39"
            Outlet111.text = "8.78E-1"
            OutletSiO2.text = "8.52E-2"
        }
        if T == 10 && W == 2 {
            Outlet100.text = "48.60"
            Outlet110.text = "74.48"
            Outlet111.text = "8.11E-1"
            OutletSiO2.text = "1.18E-1"
        }
        if T == 10 && W == 3 {
            Outlet100.text = "47.14"
            Outlet110.text = "72.23"
            Outlet111.text = "7.14E-1"
            OutletSiO2.text = "1.54E-1"
        }
        if T == 10 && W == 4 {
            Outlet100.text = "44.45"
            Outlet110.text = "68.12"
            Outlet111.text = "6.01E-1"
            OutletSiO2.text = "1.92E-1"
        }
        if T == 10 && W == 5 {
            Outlet100.text = "40.79"
            Outlet110.text = "62.50"
            Outlet111.text = "4.82E-1"
            OutletSiO2.text = "1.93E-1"
        }
        if T == 10 && W == 6 {
            Outlet100.text = "36.36"
            Outlet110.text = "55.71"
            Outlet111.text = "3.67E-1"
            OutletSiO2.text = "1.79E-1"
        }
        if T == 10 && W == 7 {
            Outlet100.text = "31.39"
            Outlet110.text = "48.10"
            Outlet111.text = "2.63E-1"
            OutletSiO2.text = "1.63E-1"
        }
        if T == 10 && W == 8 {
            Outlet100.text = "26.14"
            Outlet110.text = "40.06"
            Outlet111.text = "1.76E-1"
            OutletSiO2.text = "1.46E-1"
        }
        
        if T == 11 && W == 0 {
            Outlet100.text = "61.99"
            Outlet110.text = "95.22"
            Outlet111.text = "1.140"
            OutletSiO2.text = "8.24E-2"
        }
        if T == 11 && W == 1 {
            Outlet100.text = "64.81"
            Outlet110.text = "99.55"
            Outlet111.text = "1.114"
            OutletSiO2.text = "1.29E-1"
        }
        if T == 11 && W == 2 {
            Outlet100.text = "64.89"
            Outlet110.text = "99.67"
            Outlet111.text = "1.029"
            OutletSiO2.text = "1.79E-1"
        }
        if T == 11 && W == 3 {
            Outlet100.text = "62.93"
            Outlet110.text = "96.67"
            Outlet111.text = "9.06E-1"
            OutletSiO2.text = "2.33E-1"
        }
        if T == 11 && W == 4 {
            Outlet100.text = "59.35"
            Outlet110.text = "91.16"
            Outlet111.text = "7.62E-1"
            OutletSiO2.text = "2.91E-1"
        }
        if T == 11 && W == 5 {
            Outlet100.text = "54.45"
            Outlet110.text = "83.64"
            Outlet111.text = "6.11E-1"
            OutletSiO2.text = "2.92E-1"
        }
        if T == 11 && W == 6 {
            Outlet100.text = "48.54"
            Outlet110.text = "74.56"
            Outlet111.text = "4.65E-1"
            OutletSiO2.text = "2.70E-1"
        }
        if T == 11 && W == 7 {
            Outlet100.text = "41.91"
            Outlet110.text = "64.38"
            Outlet111.text = "3.33E-1"
            OutletSiO2.text = "2.46E-1"
        }
        if T == 11 && W == 8 {
            Outlet100.text = "34.90"
            Outlet110.text = "53.61"
            Outlet111.text = "2.23E-1"
            OutletSiO2.text = "2.20E-1"
        }
        
        if T == 12 && W == 0 {
            Outlet100.text = "82.08"
            Outlet110.text = "126.4"
            Outlet111.text = "1.436"
            OutletSiO2.text = "1.23E-1"
        }
        if T == 12 && W == 1 {
            Outlet100.text = "85.82"
            Outlet110.text = "132.1"
            Outlet111.text = "1.404"
            OutletSiO2.text = "1.92E-1"
        }
        if T == 12 && W == 2 {
            Outlet100.text = "85.92"
            Outlet110.text = "132.3"
            Outlet111.text = "1.297"
            OutletSiO2.text = "2.67E-1"
        }
        if T == 12 && W == 3 {
            Outlet100.text = "83.33"
            Outlet110.text = "128.3"
            Outlet111.text = "1.142"
            OutletSiO2.text = "3.48E-1"
        }
        if T == 12 && W == 4 {
            Outlet100.text = "78.59"
            Outlet110.text = "121.0"
            Outlet111.text = "9.61E-1"
            OutletSiO2.text = "4.34E-1"
        }
        if T == 12 && W == 5 {
            Outlet100.text = "72.10"
            Outlet110.text = "111.0"
            Outlet111.text = "7.70E-1"
            OutletSiO2.text = "4.37E-1"
        }
        if T == 12 && W == 6 {
            Outlet100.text = "64.27"
            Outlet110.text = "98.96"
            Outlet111.text = "5.86E-1"
            OutletSiO2.text = "4.03E-1"
        }
        if T == 12 && W == 7 {
            Outlet100.text = "55.50"
            Outlet110.text = "85.45"
            Outlet111.text = "4.20E-1"
            OutletSiO2.text = "3.67E-1"
        }
        if T == 12 && W == 8 {
            Outlet100.text = "46.21"
            Outlet110.text = "71.16"
            Outlet111.text = "2.81E-1"
            OutletSiO2.text = "3.29E-1"
        }
        
        if T == 13 && W == 0 {
            Outlet100.text = "107.8"
            Outlet110.text = "166.4"
            Outlet111.text = "1.798"
            OutletSiO2.text = "1.82E-1"
        }
        if T == 13 && W == 1 {
            Outlet100.text = "112.7"
            Outlet110.text = "174.0"
            Outlet111.text = "1.758"
            OutletSiO2.text = "2.84E-1"
        }
        if T == 13 && W == 2 {
            Outlet100.text = "112.9"
            Outlet110.text = "174.2"
            Outlet111.text = "1.624"
            OutletSiO2.text = "3.94E-1"
        }
        if T == 13 && W == 3 {
            Outlet100.text = "109.5"
            Outlet110.text = "169.0"
            Outlet111.text = "1.430"
            OutletSiO2.text = "5.13E-1"
        }
        if T == 13 && W == 4 {
            Outlet100.text = "103.2"
            Outlet110.text = "159.3"
            Outlet111.text = "1.203"
            OutletSiO2.text = "6.41E-1"
        }
        if T == 13 && W == 5 {
            Outlet100.text = "94.73"
            Outlet110.text = "146.2"
            Outlet111.text = "9.64E-1"
            OutletSiO2.text = "6.45E-1"
        }
        if T == 13 && W == 6 {
            Outlet100.text = "84.44"
            Outlet110.text = "130.3"
            Outlet111.text = "7.34E-1"
            OutletSiO2.text = "5.96E-1"
        }
        if T == 13 && W == 7 {
            Outlet100.text = "72.91"
            Outlet110.text = "112.5"
            Outlet111.text = "5.26E-1"
            OutletSiO2.text = "5.43E-1"
        }
        if T == 13 && W == 8 {
            Outlet100.text = "60.72"
            Outlet110.text = "93.70"
            Outlet111.text = "3.52E-1"
            OutletSiO2.text = "4.86E-1"
        }
        
        if T == 14 && W == 0 {
            Outlet100.text = "140.6"
            Outlet110.text = "217.5"
            Outlet111.text = "2.237"
            OutletSiO2.text = "2.66E-1"
        }
        if T == 14 && W == 1 {
            Outlet100.text = "147.0"
            Outlet110.text = "227.4"
            Outlet111.text = "2.188"
            OutletSiO2.text = "4.15E-1"
        }
        if T == 14 && W == 2 {
            Outlet100.text = "147.2"
            Outlet110.text = "227.7"
            Outlet111.text = "2.020"
            OutletSiO2.text = "5.76E-1"
        }
        if T == 14 && W == 3 {
            Outlet100.text = "142.8"
            Outlet110.text = "220.8"
            Outlet111.text = "1.779"
            OutletSiO2.text = "7.50E-1"
        }
        if T == 14 && W == 4 {
            Outlet100.text = "134.6"
            Outlet110.text = "208.2"
            Outlet111.text = "1.497"
            OutletSiO2.text = "9.37E-1"
        }
        if T == 14 && W == 5 {
            Outlet100.text = "123.5"
            Outlet110.text = "191.1"
            Outlet111.text = "1.200"
            OutletSiO2.text = "9.42E-1"
        }
        if T == 14 && W == 6 {
            Outlet100.text = "110.1"
            Outlet110.text = "170.3"
            Outlet111.text = "9.13E-1"
            OutletSiO2.text = "8.70E-1"
        }
        if T == 14 && W == 7 {
            Outlet100.text = "95.08"
            Outlet110.text = "147.1"
            Outlet111.text = "6.54E-1"
            OutletSiO2.text = "7.93E-1"
        }
        if T == 14 && W == 8 {
            Outlet100.text = "79.17"
            Outlet110.text = "122.5"
            Outlet111.text = "4.38E-1"
            OutletSiO2.text = "7.10E-1"
        }
        
        if T == 15 && W == 0 {
            Outlet100.text = "182.1"
            Outlet110.text = "282.2"
            Outlet111.text = "2.768"
            OutletSiO2.text = "3.84E-1"
        }
        if T == 15 && W == 1 {
            Outlet100.text = "190.3"
            Outlet110.text = "295.0"
            Outlet111.text = "2.706"
            OutletSiO2.text = "6.00E-1"
        }
        if T == 15 && W == 2 {
            Outlet100.text = "190.6"
            Outlet110.text = "295.4"
            Outlet111.text = "2.499"
            OutletSiO2.text = "8.33E-1"
        }
        if T == 15 && W == 3 {
            Outlet100.text = "184.8"
            Outlet110.text = "286.5"
            Outlet111.text = "2.201"
            OutletSiO2.text = "1.084"
        }
        if T == 15 && W == 4 {
            Outlet100.text = "174.3"
            Outlet110.text = "270.2"
            Outlet111.text = "1.851"
            OutletSiO2.text = "1.355"
        }
        if T == 15 && W == 5 {
            Outlet100.text = "159.9"
            Outlet110.text = "247.9"
            Outlet111.text = "1.484"
            OutletSiO2.text = "1.362"
        }
        if T == 15 && W == 6 {
            Outlet100.text = "142.5"
            Outlet110.text = "221.0"
            Outlet111.text = "1.129"
            OutletSiO2.text = "1.258"
        }
        if T == 15 && W == 7 {
            Outlet100.text = "123.1"
            Outlet110.text = "190.8"
            Outlet111.text = "8.09E-1"
            OutletSiO2.text = "1.146"
        }
        if T == 15 && W == 8 {
            Outlet100.text = "102.5"
            Outlet110.text = "158.9"
            Outlet111.text = "5.41E-1"
            OutletSiO2.text = "1.027"
        }
        
        if T == 16 && W == 0 {
            Outlet100.text = "234.1"
            Outlet110.text = "363.6"
            Outlet111.text = "3.404"
            OutletSiO2.text = "5.50E-1"
        }
        if T == 16 && W == 1 {
            Outlet100.text = "244.7"
            Outlet110.text = "380.1"
            Outlet111.text = "3.328"
            OutletSiO2.text = "8.59E-1"
        }
        if T == 16 && W == 2 {
            Outlet100.text = "245.0"
            Outlet110.text = "380.6"
            Outlet111.text = "3.073"
            OutletSiO2.text = "1.193"
        }
        if T == 16 && W == 3 {
            Outlet100.text = "237.6"
            Outlet110.text = "369.1"
            Outlet111.text = "2.707"
            OutletSiO2.text = "1.553"
        }
        if T == 16 && W == 4 {
            Outlet100.text = "224.1"
            Outlet110.text = "348.1"
            Outlet111.text = "2.277"
            OutletSiO2.text = "1.940"
        }
        if T == 16 && W == 5 {
            Outlet100.text = "205.6"
            Outlet110.text = "319.4"
            Outlet111.text = "1.826"
            OutletSiO2.text = "1.950"
        }
        if T == 16 && W == 6 {
            Outlet100.text = "183.3"
            Outlet110.text = "284.7"
            Outlet111.text = "1.389"
            OutletSiO2.text = "1.802"
        }
        if T == 16 && W == 7 {
            Outlet100.text = "158.3"
            Outlet110.text = "245.8"
            Outlet111.text = "9.95E-1"
            OutletSiO2.text = "1.641"
        }
        if T == 16 && W == 8 {
            Outlet100.text = "131.8"
            Outlet110.text = "204.7"
            Outlet111.text = "6.65E-1"
            OutletSiO2.text = "1.471"
        }
    }
}

