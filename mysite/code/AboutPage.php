<?php

use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class AboutPage extends Page {


	private static $db = array(
		'Contact' => 'HTMLText',
		'Contact2' => 'HTMLText'
		);
	
	public function getCMSFields() {
		
		$fields = parent::getCMSFields();
		
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Contact'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Contact2'));
		
		
		return $fields;
	}

}
