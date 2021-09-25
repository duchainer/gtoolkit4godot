Class {
	#name : 'GodotSceneScanner',
	#superclass : 'SmaCCScanner',
	#category : 'SmaCC_Godot-SmaCC_Godot'
}

{ #category : 'generated' }
GodotSceneScanner >> emptySymbolTokenId [

	^ 22
]

{ #category : 'generated' }
GodotSceneScanner >> errorTokenId [

	^ 23
]

{ #category : 'generated' }
GodotSceneScanner >> scan1 [

	[ 
	self recordMatch: #( 6 ).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
GodotSceneScanner >> scan2 [

	self step.
	currentCharacter isDigit ifTrue: [ 
		[ 
		self recordMatch: #( 6 ).
		self step.
		currentCharacter isDigit ] whileTrue.
		^ self reportLastMatch ].
	('+-' includes: currentCharacter) ifTrue: [ 
		self step.
		currentCharacter isDigit ifTrue: [ 
			[ 
			self recordMatch: #( 6 ).
			self step.
			currentCharacter isDigit ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
GodotSceneScanner >> scanForToken [

	self step.
	currentCharacter == $" ifTrue: [ 
		[ 
		self step.
		currentCharacter == $" ifTrue: [ 
			^ self recordAndReportMatch: #( 7 ) ].
		true ] whileTrue ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #( 8 ) ].
	^ self scanForTokenX6
]

{ #category : 'generated' }
GodotSceneScanner >> scanForTokenX1 [

	[ 
	self recordMatch: #( 4 ).
	self step.
	(currentCharacter between: $0 and: $9) or: [ 
		(currentCharacter between: $A and: $Z) or: [ 
			currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue
]

{ #category : 'generated' }
GodotSceneScanner >> scanForTokenX2 [

	[ 
	self recordMatch: #( 6 ).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan1 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
GodotSceneScanner >> scanForTokenX3 [

	self recordMatch: #( 6 ).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan1 ].
	currentCharacter isDigit ifTrue: [ 
		[ 
		self step.
		currentCharacter == $. ifTrue: [ ^ self scan1 ].
		currentCharacter isDigit ] whileTrue ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
GodotSceneScanner >> scanForTokenX4 [

	[ 
	self recordMatch: #( 1 ).
	self step.
	currentCharacter isSeparator or: [ 
		currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
GodotSceneScanner >> scanForTokenX5 [

	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
GodotSceneScanner >> scanForTokenX6 [

	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #( 9 ) ].
	currentCharacter == $. ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == $0 ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #( 5 ) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #( 2 ) ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #( 3 ) ].
	currentCharacter isDigit ifTrue: [ ^ self scanForTokenX2 ].
	(currentCharacter isSeparator or: [ 
		 currentCharacter == Character pageUp ]) ifTrue: [ 
		^ self scanForTokenX4 ].
	((currentCharacter between: $A and: $Z) or: [ 
		 currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ]) 
		ifTrue: [ self scanForTokenX1 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
GodotSceneScanner >> tokenActions [

	^ #( #whitespace )
]
