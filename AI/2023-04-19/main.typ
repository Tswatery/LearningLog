#import "template.typ": *

#show: project.with(
	title: "Baye's Net 1",
	authors: ("Fanglin Xu",),
)

= #underline[1.Independence]

#h(2em) We say X, Y are independent if and only if $forall x,y P(x,y) = P(x)P(y)$, we write $x  tack.t.double y$. But it's so rare in reality. 可以发现某些变量其实之间的关系很微弱，但是独立性的条件太强了，所以提出了条件独立(conditional independence)的概念。

= #underline[2.Conditional Independence]

#h(2em) If $P(x|y,z) = P(x|z)$. We can say that x i conditional independence of y given z. Or we can write $P(x,y|z) = P(x|z)P(y|z)$, which means if I know the information of z, then y will not change my belief of x.

== 2.1 n example
	
	- Given Traffic, Umbrella, Raining. What's the relationship between the them?

	#h(2em) If it's raining, then I should carry umbrella, which has nothing to do with traffic is heavy or not. So the answer is $T tack.t.double U | R$.

	- Given Fire, Smoke, Alarm, what is in this scenario?
	#h(2em) If there is smoke, then the alarm will go off, which has nothing to with fire. So the answer is $F tack.t.double A | S$.

	- The key thing is to find a thing like Raining will directly affect the other thing like Umbrella.

== 2.2 Chain

#h(2em) While $P(x, y|z) = P(x|z)P(y|z)$ is not always right, the following formula is right all the time.\

#align(center)[$P(x_1, x_2, x_3, x_4, ..., x_n) = P(x_1)P(x_2|x_1)P(x_3|x_1, x_2) ... P(x_n|x_1, x_2, ..., x_(n-1))$]

You can use this to solve some problems very quickly.

= #underline[3. Baye's Net]

== 3.1 What is baye's net?

#h(2em) It's a graph, which has nodes ,arcs and is acyclic. The arc between A and B means the direct influence between A and B. So it can split big, complicated things into tiny pieces.

- $A -> B$, we can could find what's B now given A? Or calculated P(B|A).

== 3.2 Example

$
P(i, h, !l, p, !e) 
	&= P(i) P(h|i) P(!l|h, i) P(p|i, h, !l) P(!e|i, h, !l, p) \
	&= P(i)P(h)P(!l|h, i)P(p|i, h, !l)P(!e|p)
$
#h(2em)So when you encounter a big probability formula, just split it using the chain rule. Then you can find some information from the Baye's net. For example, there doesn't exist an arc between the node $H $  and the node $I$, which means whether you know this or not doesn't affect your belief on $H$.


