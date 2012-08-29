<?php
class Show extends Page {
    static $db = array(
    'Artist' => 'Text',
    'Date' => 'Date',
    'Time' => 'Text',
    'DoorsOpenTime' => 'Text',
    'Venue' => 'Text',
    'SpotifyLink' => 'Text',     
    'BuyTicketsOnlineLink' => 'Text',
    'BuyTicketsInPersonLink' => 'Text',
    'TwitterLink' => 'Text',
    'TumblrLink' => 'Text',
    'FacebookLink' => 'Text',
    'PinterestLink' => 'Text'
    
    
    );
    
    static $has_one = array(
    'Picture' => 'Image',
    'PhotoGallery1' => 'Image',
    'PhotoGallery2' => 'Image',
    'PhotoGallery3' => 'Image',
    'PhotoGallery4' => 'Image',
    'HomePage' => 'HomePage'
    
    );
    
      
    //static $defaults = array ('ProvideComments' => '1',           
    //);
    
    public function getCMSFields() {
        $fields = parent::getCMSFields();
     
        $fields->addFieldToTab('Root.Main', new TextField('Artist'));
        $fields->addFieldToTab('Root.Main', new TextField('Date'));   
        $fields->addFieldToTab('Root.Main', new TextAreaField('Time'));
        $fields->addFieldToTab('Root.Main', new TextField('DoorsOpenTime'));
        $fields->addFieldToTab('Root.Main', new TextAreaField('Venue')); 
          
        $fields->addFieldToTab('Root.Main', new UploadField('Picture', 'Featured picture.  For the currently featured show, the dimensions are 970X516'));
        $fields->addFieldToTab('Root.Main', new UploadField('PhotoGallery1')); 
        $fields->addFieldToTab('Root.Main', new UploadField('PhotoGallery2')); 
        $fields->addFieldToTab('Root.Main', new UploadField('PhotoGallery3')); 
        $fields->addFieldToTab('Root.Main', new UploadField('PhotoGallery4'));
            
        $fields->addFieldToTab('Root.Main', new TextField('SpotifyLink')); 
        $fields->addFieldToTab('Root.Main', new TextField('BuyTicketsOnlineLink'));
        $fields->addFieldToTab('Root.Main', new TextField('BuyTicketsInPersonLink'));
        //$fields->addFieldToTab('Root.Main', new TextField('FacebookLink')); 
        //$fields->addFieldToTab('Root.Main', new TextField('TwitterLink')); 
        //$fields->addFieldToTab('Root.Main', new TextField('TumblrLink')); 
        //$fields->addFieldToTab('Root.Main', new TextField('PinterestLink'));                               
               
        return $fields;
    }
    
     public function getTimestamp(){
		
		$date = $this->Date . $this->Time;
		$timestamp = strtotime($date);
		return $timestamp;
	}
	
	public function getFormattedDate(){
		
		$date = $this->Date . $this->Time;
		$timestamp = strtotime($date);
		$formattedDate = date("F j, Y", $timestamp);
		return $formattedDate;
	}
	
}
  
class Show_Controller extends Page_Controller {
     
}