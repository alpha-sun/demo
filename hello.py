import hello
import ptvsd

#     

ptvsd.enable_attach("secret", address = ('127.0.0.1', 3000))

ptvsd.wait_for_attach()

print(hello.greet())
