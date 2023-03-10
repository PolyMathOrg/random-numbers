"
A PMExponentialGeneratorTest is a test class for testing the behavior of PMExponentialGenerator
"
Class {
	#name : #PMExponentialGeneratorTest,
	#superclass : #TestCase,
	#category : #'Math-Tests-RandomNumbers'
}

{ #category : #tests }
PMExponentialGeneratorTest >> testGenerator [
	| eg |
	eg := PMExponentialGenerator new.
	self
		assert: (eg generator isKindOf: PMExponentialGenerator defaultGeneratorClass).
	self assert: (eg generator isKindOf: PMPseudoRandomNumberGenerator).
	eg generator: PMMersenneTwisterRandomGenerator new.
	self assert: (eg generator isKindOf: PMMersenneTwisterRandomGenerator).
	self assert: (eg next isKindOf: Number)
]

{ #category : #tests }
PMExponentialGeneratorTest >> testPeekIsIdempotent [
	| eg |
	eg := PMExponentialGenerator new.
	self assert: eg peek equals: eg peek.
	self assert: eg peek equals: eg next
]

{ #category : #tests }
PMExponentialGeneratorTest >> testSampleMeanConvergesToExpectedValue [
	"testing a random sample seems suspect. We use a 5% interval here"

	| gen sample |
	gen := PMExponentialGenerator mean: 10.
	
	sample := PMRandomSample ofSize: 10000 usingGenerator: gen.
	
	self
		assert: (sample average between: gen expectedValue * 0.95 and: gen expectedValue * 1.05)
]
