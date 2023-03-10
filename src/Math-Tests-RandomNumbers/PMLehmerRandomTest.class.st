Class {
	#name : #PMLehmerRandomTest,
	#superclass : #TestCase,
	#category : #'Math-Tests-RandomNumbers'
}

{ #category : #tests }
PMLehmerRandomTest >> testNextBetweenZeroAndOne [
	| g |
	g := PMLehmerRandomGenerator new.
	1000
		timesRepeat: [ self assert: g next > 0.
			self assert: g next < 1 ]
]

{ #category : #tests }
PMLehmerRandomTest >> testPeekAnswersSameAsNext [
	| g |
	g := PMLehmerRandomGenerator new.
	self assert: g peek equals: g next
]

{ #category : #tests }
PMLehmerRandomTest >> testPeekIsIdempotent [
	| g |
	g := PMLehmerRandomGenerator new.
	self assert: g peek equals: g peek
]
