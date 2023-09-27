//
//  ViewController.swift
//  PageControllerWithImage
//
//  Created by Shyam kumar M on 20/08/23.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet weak var next_btn_outlet: UIButton!
    @IBOutlet weak var skip_btn_outlet: UIButton!
    @IBOutlet weak var previous_btn_outlet: UIButton!
    
    @IBOutlet weak var ui_Image_Outlet: UIImageView!
    
    @IBOutlet weak var main_textview_outlet: UITextView!
    @IBOutlet weak var main_lable_outlet: UILabel!
    
    @IBOutlet weak var page_Controller_outlet: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeControll))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeControll))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        page_Controller_outlet.currentPage = 0
        
        main_lable_outlet.text = "ABC Travels"
        main_textview_outlet.text = "Welcome to ABC world class travels we will organise all tours around the world"
        ui_Image_Outlet.image = UIImage(named: "1")
        previous_btn_outlet.isHidden = true
        
        
    }
    
    
    @objc func swipeControll(gesture:UIGestureRecognizer){
        
        if let swipegesture = gesture as? UISwipeGestureRecognizer{
            switch swipegesture.direction{
            case UISwipeGestureRecognizer.Direction.right:
                if page_Controller_outlet.currentPage == 2 {
                    page_Controller_outlet.currentPage = 1
                    main_lable_outlet.text = "Luxury Rooms"
                    main_textview_outlet.text = "In this trip we will provide all luxury rooms for indivual persons"
                    ui_Image_Outlet.image = UIImage(named: "3")
                    previous_btn_outlet.isHidden = false
                    next_btn_outlet.setTitle("Next", for: .normal)
                    skip_btn_outlet.isHidden = false
                    
                }
                else if page_Controller_outlet.currentPage == 1 {
                    page_Controller_outlet.currentPage = 0
                    main_lable_outlet.text = "ABC Travels"
                    main_textview_outlet.text = "Welcome to ABC world class travels we will organise all tours around the world"
                    ui_Image_Outlet.image = UIImage(named: "1")
                    previous_btn_outlet.isHidden = true
                    next_btn_outlet.setTitle("Next", for: .normal)
                    skip_btn_outlet.isHidden = false
                }
                
            case UISwipeGestureRecognizer.Direction.left:
                if page_Controller_outlet.currentPage == 1 {
                    page_Controller_outlet.currentPage = 2
                    main_lable_outlet.text = "For Confirm Booking"
                    main_textview_outlet.text = "Please contact our Travels to confirm your Bookings. For more details contact us 9876543210"
                    ui_Image_Outlet.image = UIImage(named: "5")
                    skip_btn_outlet.isHidden = true
                    next_btn_outlet.setTitle("Done", for: .normal)
                    
                }
                else if page_Controller_outlet.currentPage == 0 {
                    page_Controller_outlet.currentPage = 1
                    main_lable_outlet.text = "Luxury Rooms"
                    main_textview_outlet.text = "In this trip we will provide all luxury rooms for indivual persons"
                    ui_Image_Outlet.image = UIImage(named: "3")
                    skip_btn_outlet.isHidden = false
                    next_btn_outlet.isHidden = false
                    previous_btn_outlet.isHidden = false
                    next_btn_outlet.setTitle("Next", for: .normal)
                    
                }
                
                
                
                
            default:
                break
            }
        }
        
        
        
    }

    @IBAction func previous_btn_action(_ sender: Any) {
        
        if page_Controller_outlet.currentPage == 2 {
            page_Controller_outlet.currentPage = 1
            main_lable_outlet.text = "Luxury Rooms"
            main_textview_outlet.text = "In this trip we will provide all luxury rooms for indivual persons"
            ui_Image_Outlet.image = UIImage(named: "3")
            previous_btn_outlet.isHidden = false
            next_btn_outlet.setTitle("Next", for: .normal)
            skip_btn_outlet.isHidden = false
            
        }
        else if page_Controller_outlet.currentPage == 1 {
            page_Controller_outlet.currentPage = 0
            main_lable_outlet.text = "ABC Travels"
            main_textview_outlet.text = "Welcome to ABC world class travels we will organise all tours around the world"
            ui_Image_Outlet.image = UIImage(named: "1")
            previous_btn_outlet.isHidden = true
            next_btn_outlet.setTitle("Next", for: .normal)
            skip_btn_outlet.isHidden = false
        }
        
    }
    
    
    @IBAction func next_btn_action(_ sender: Any) {
        if page_Controller_outlet.currentPage == 1 {
            page_Controller_outlet.currentPage = 2
            main_lable_outlet.text = "For Confirm Booking"
            main_textview_outlet.text = "Please contact our Travels to confirm your Bookings. For more details contact us 9876543210"
            ui_Image_Outlet.image = UIImage(named: "5")
            skip_btn_outlet.isHidden = true
            next_btn_outlet.setTitle("Done", for: .normal)
            
        }
        else if page_Controller_outlet.currentPage == 0 {
            page_Controller_outlet.currentPage = 1
            main_lable_outlet.text = "Luxury Rooms"
            main_textview_outlet.text = "In this trip we will provide all luxury rooms for indivual persons"
            ui_Image_Outlet.image = UIImage(named: "3")
            skip_btn_outlet.isHidden = false
            next_btn_outlet.isHidden = false
            previous_btn_outlet.isHidden = false
            next_btn_outlet.setTitle("Next", for: .normal)
            
        }
        
    }
    
}







