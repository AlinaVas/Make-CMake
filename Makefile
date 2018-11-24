TARGET = myApp
LIB = libStatic.a
CXX = g++
SRC = main.cpp reminder.cpp
OBJ = $(SRC:.cpp=.o)
FLAGS = -Wall -Wextra -Werror $(CXXFLAGS)
RM = /bin/rm -f

.PHONY: all clean re

all: $(LIB) $(TARGET)

%.o: %.cpp %.h
	$(CXX) $(FLAGS) -o $@ -c $<

$(LIB): $(OBJ)
	ar rcs $@ $^

$(TARGET): $(OBJ)
	$(CXX) $(FLAGS) -o $@ $^ $(LIB)

clean:
	$(RM) $(OBJ) $(LIB) $(TARGET)

re: clean all
