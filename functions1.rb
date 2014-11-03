#Fraction methods 1.0
#By Emir Beg 11/2/14
#Goes with Fraction_test.rb returns arrays as a result of opperators
require "rational"

#Define multiply and put results in array
def multiply (n1,d1,n2,d2)
        n3= n1*n2
        d3= d1*d2
	lcd=n3.gcd(d3)
	n=n3/lcd
	d=d3/lcd
	[n, d]
end

#Define simplify and put results in array
def simplify (n,d)
	lcd=n.gcd(d)
	t=n/lcd
	b=d/lcd
	[t, b]		
end

#Define add and put results in array
def add (n1,d1,n2,d2)
	n12=n1*d2
	n21=n2*d1
	d3=d1*d2
	n3=n12+n21
	lcd=n3.gcd(d3)
	n=n3/lcd
	d=d3/lcd
	[n, d]
end

#Define subtract and put results in array
def subtract(n1,d1,n2,d2)
        n12=n1*d2
        n21=n2*d1
        d3=d1*d2
        n3=n12-n21
        lcd=n3.gcd(d3)
        n=n3/lcd
        d=d3/lcd
        [n, d]
end

#Define divide and put results in array
def divide(n1,d1,n2,d2)
	n3= n1*d2
        d3= d1*n2
        lcd=n3.gcd(d3)
        n=n3/lcd
        d=d3/lcd
        [n, d]
end
