"
I am a baseline to define the structure and dependencies of the MathRandomNumbers project.
"
Class {
	#name : #BaselineOfMathRandomNumbers,
	#superclass : #BaselineOf,
	#category : #BaselineOfMathRandomNumbers
}

{ #category : #baseline }
BaselineOfMathRandomNumbers >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [

			"Packages"
			spec
				package: 'Math-RandomNumbers';
				package: 'Math-Tests-RandomNumbers' with: [ spec requires: #('Math-RandomNumbers') ].

			"Groups"
			spec
				group: 'Core' with: #('Math-RandomNumbers');
				group: 'Tests' with: #('Math-Tests-RandomNumbers') ]
]

{ #category : #accessing }
BaselineOfMathRandomNumbers >> projectClass [
	^ MetacelloCypressBaselineProject
]
