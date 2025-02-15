Class {
	#name : #SpBoxLayoutWithTableForTestPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'table'
	],
	#category : #'Spec2-Morphic-Backend-Tests'
}

{ #category : #layout }
SpBoxLayoutWithTableForTestPresenter class >> defaultLayout [

	^ SpBoxLayout newTopToBottom
		add: #table;
		yourself
]

{ #category : #'instance creation' }
SpBoxLayoutWithTableForTestPresenter class >> open [ 
	<script>
	
	self new open
]

{ #category : #specs }
SpBoxLayoutWithTableForTestPresenter class >> specWithPadding [

	^ SpBoxLayout newTopToBottom
		add: #table expand: false fill: false padding: 10;
		yourself
]

{ #category : #initialization }
SpBoxLayoutWithTableForTestPresenter >> initializePresenters [
	
	(table := self newTable) 
		items: Smalltalk allClassesAndTraits;
		addColumn: (SpCompositeTableColumn new
			title: 'Test'; 
			addColumn: ((SpImageTableColumn 
				evaluated: [ :aClass | self iconNamed: aClass systemIconName ]) 
				width: 20);
			addColumn: (SpStringTableColumn evaluated: [ :each | each name ])).
]

{ #category : #accessing }
SpBoxLayoutWithTableForTestPresenter >> table [

	^ table
]
