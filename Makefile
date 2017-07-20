# location of the Python header files
PYTHON_INCLUDE = /usr/local/Cellar/python3/3.6.2/Frameworks/Python.framework/Versions/3.6/include/python3.6m
 
# location of the Boost Python include files and library
BOOST_INC = /usr/local/Cellar/boost/1.64.0_1/include/boost
BOOST_LIB = /usr/local/Cellar/boost/1.64.0_1/lib
BOOST_LIB2 = /usr/local/Cellar/boost-python/1.64.0/lib
PYTHON_LIB = /usr/local/Cellar/python3/3.6.2/Frameworks/Python.framework/Versions/3.6/lib/python3.6/config-3.6m-darwin
 
# compile mesh classes
TARGET = hello
 
$(TARGET).so: $(TARGET).o
#	g++ -shared $(TARGET).o -L$(BOOST_LIB) -lboost_python-$(PYTHON_VERSION) -L$(PYTHON_LIB) -lpython3.6m -o $(TARGET).so 
	g++ -shared $(TARGET).o -L$(BOOST_LIB) -L$(BOOST_LIB2) -lboost_python3 -L$(PYTHON_LIB) -lpython3.6 -o $(TARGET).so

$(TARGET).o: $(TARGET).cpp
	g++ -I$(PYTHON_INCLUDE) -I$(BOOST_INC) -fPIC -c $(TARGET).cpp
