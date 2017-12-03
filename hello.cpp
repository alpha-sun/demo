#include <boost/python.hpp>

char const* greetBad();
char const* greetGood();

BOOST_PYTHON_MODULE(hello)
{
    using namespace boost::python;
    def("greetBad", greetBad);
    def("greetGood", greetGood);
}

char const* greetBad()
{
    throw(0);
   return "hello, world";
}

char const* greetGood()
{
   return "hello, world";
}

