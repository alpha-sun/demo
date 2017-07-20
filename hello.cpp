#include <boost/python.hpp>

char const* greet();

BOOST_PYTHON_MODULE(hello)
{
    using namespace boost::python;
    def("greet", greet);
}

char const* greet()
{
   return "hello, world";
}

