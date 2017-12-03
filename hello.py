import hello

print(hello.greetGood())

try:
    print(hello.greetGood())
    print(hello.greetBad())
except:
    print("Caught an error and moving along...")