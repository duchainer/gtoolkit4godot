Class {
	#name : 'GodotSceneParser',
	#superclass : 'SmaCCParser',
	#category : 'SmaCC_Godot-SmaCC_Godot'
}

{ #category : 'generated-accessing' }
GodotSceneParser class >> cacheId [
	^'2021-09-25T17:48:20.127026-04:00'
]

{ #category : 'generated' }
GodotSceneParser class >> definitionComment [
"Start
    : Section+
	;

<whitespace>: \s+ ;

Section
	: Header ContentParam*
	;

Header
	: <leftBracket> <name>  HeaderParam* <rightBracket>
	;

<leftBracket> : \[ ;

<rightBracket>: \] ;

# no prefix number
# \w is letter, number or underscore
<name>
	: ( [a-zA-Z]  | _ ) \w*
	;

# Key=Value
HeaderParam
	: Key <equal> Value
	;

Key : <name> ;
<equal> : \= ;

Value
	: <name>
	| <number>
	| <string>
	| FunctionCall
	;

#All number literals
<number> : <integer> | <floatnumber>;

# Integer literals
<decimalinteger> :  [1-9] [0-9]* | 0 ;
<integer> :  <decimalinteger>;

#Float literals
<pointfloat> :  ([0-9]+ \. [0-9]*) | (\. [0-9]+) ;
<exponentfloat> :  ([0-9]+ | <pointfloat>) (e | E) (\+|\-)? [0-9]+ ;
<floatnumber> :  <pointfloat> | <exponentfloat> ;

<string>
	: \"" [^\""]* \""
	;

FunctionCall
	: <name> <leftBrace> Value?  <rightBrace>
	;

<leftBrace>
	: \(
	;

<rightBrace>
	: \)
	;

ContentParam
	: Key  <equal> Value
	;"
]

{ #category : 'generated' }
GodotSceneParser class >> reduceTable [
^#(
	#(11 1 #reduceFor: 1025 false) 
	#(12 1 #reduceFor: 13313 false) 
	#(14 0 #reduceFor: 66561 false) 
	#(16 0 #reduceFor: 117761 false) 
	#(12 2 #reduceFor: 13314 false) 
	#(13 2 #reduceFor: 48129 false) 
	#(18 1 #reduceFor: 339969 false) 
	#(14 2 #reduceFor: 66562 false) 
	#(15 4 #reduceFor: 84993 false) 
	#(16 2 #reduceFor: 117762 false) 
	#(19 1 #reduceFor: 371713 false) 
	#(19 1 #reduceFor: 371714 false) 
	#(19 1 #reduceFor: 371715 false) 
	#(21 3 #reduceFor: 915457 false) 
	#(19 1 #reduceFor: 371716 false) 
	#(17 3 #reduceFor: 302081 false) 
	#(20 3 #reduceFor: 807937 false) 
	#(20 4 #reduceFor: 807938 false)
	).
]

{ #category : 'generated' }
GodotSceneParser class >> scannerClass [
	^GodotSceneScanner
]

{ #category : 'generated' }
GodotSceneParser class >> startingStateForStart [

	^ 1
]

{ #category : 'generated' }
GodotSceneParser class >> symbolNames [

	^ #( '<whitespace>' '<leftBracket>' '<rightBracket>' '<name>'
	     '<equal>' '<number>' '<string>' '<leftBrace>' '<rightBrace>'
	     'B e g i n' 'Start' 'Section+' 'Section' 'ContentParam*'
	     'Header' 'HeaderParam*' 'HeaderParam' 'Key' 'Value' 'FunctionCall'
	     'ContentParam' 'E O F' 'error' )
]

{ #category : 'generated' }
GodotSceneParser class >> transitionTable [
^#(
#[1 0 9 0 2 0 13 0 11 0 17 0 12 0 21 0 13 0 25 0 15] 
#[0 0 29 0 4] 
#[0 0 0 0 22] 
#[1 0 9 0 2 0 33 0 13 0 25 0 15 0 6 0 22] 
#[0 0 10 0 2 0 22] 
#[1 0 14 0 2 0 14 0 4 0 37 0 14 0 14 0 22] 
#[1 0 18 0 3 0 18 0 4 0 41 0 16] 
#[0 0 22 0 2 0 22] 
#[1 0 26 0 2 0 45 0 4 0 49 0 18 0 53 0 21 0 26 0 22] 
#[1 0 57 0 3 0 45 0 4 0 61 0 17 0 65 0 18] 
#[0 0 30 0 5] 
#[0 0 69 0 5] 
#[0 0 34 0 2 0 4 0 22] 
#[0 0 38 0 2 0 4 0 22] 
#[0 0 42 0 3 0 4] 
#[0 0 73 0 5] 
#[1 0 77 0 4 0 81 0 6 0 85 0 7 0 89 0 19 0 93 0 20] 
#[1 0 77 0 4 0 81 0 6 0 85 0 7 0 97 0 19 0 93 0 20] 
#[1 0 46 0 2 0 46 0 3 0 46 0 4 0 101 0 8 0 46 0 9 0 46 0 22] 
#[0 0 50 0 2 0 3 0 4 0 9 0 22] 
#[0 0 54 0 2 0 3 0 4 0 9 0 22] 
#[0 0 58 0 2 0 4 0 22] 
#[0 0 62 0 2 0 3 0 4 0 9 0 22] 
#[0 0 66 0 3 0 4] 
#[1 0 77 0 4 0 81 0 6 0 85 0 7 0 105 0 9 0 109 0 19 0 93 0 20] 
#[0 0 70 0 2 0 3 0 4 0 9 0 22] 
#[0 0 113 0 9] 
#[0 0 74 0 2 0 3 0 4 0 9 0 22]
	).
]
