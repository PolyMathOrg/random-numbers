Class {
	#name : #PMGaussianGeneratorTest,
	#superclass : #TestCase,
	#category : #'Math-Tests-RandomNumbers'
}

{ #category : #utilities }
PMGaussianGeneratorTest >> assertSampleGeneratedBy: aGenerator convergesToExpectedValue: expectedValue andStandardDeviation: stdDeviation [
	| sample |
	sample := PMRandomSample ofSize: 10000 usingGenerator: aGenerator.
	self assert: (expectedValue - sample average) abs <= 0.2.
	self assert: (sample stdev - stdDeviation) abs <= 1
]

{ #category : #tests }
PMGaussianGeneratorTest >> testSampleMeanAndStandardDeviationConvergeToDistributionValues [
	| mean standardDeviation g |
	mean := 147.
	standardDeviation := 17.
	g := PMGaussianGenerator new.
	g
		mean: mean;
		standardDeviation: standardDeviation;
		generator: PMLinearCongruentialRandomGenerator new.
	g generator seed: 42.

	self
		assertSampleGeneratedBy: g
		convergesToExpectedValue: mean
		andStandardDeviation: standardDeviation.
	"Replicated test in a different place"
	mean := 0.
	standardDeviation := 10.
	g
		mean: mean;
		standardDeviation: standardDeviation.
	self
		assertSampleGeneratedBy: g
		convergesToExpectedValue: mean
		andStandardDeviation: standardDeviation
]
