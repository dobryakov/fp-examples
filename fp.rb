
def fact(n)
  if n == 1
    1
  else
    n * fact(n-1)
  end
end

def fib(n)
  case n
    when 0
      0
    when 1
      1
    else
      fib(n-1) + fib(n-2)
  end
end

def listsum(list)
  case list.size
    when 0
      0
    when 1
      list.first
    else
      list.first + listsum(list.drop(1))
  end
end

def forr(a, b, f, acc = []) # example: for i=a; i<=b; i++ do; i*i; end
  v = acc.push f.call(a)
  forr(a+1, b, f, v) if a<b
  acc
end
