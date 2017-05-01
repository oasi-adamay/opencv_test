CC = clang++
CXXFLAGS += -std=c++11 -I./src -g
CXXFLAGS += $(shell pkg-config --cflags opencv) 
LDFLAGS += $(shell pkg-config --libs opencv)

TARGET = imgview 

$(TARGET): src/main.cpp
	$(CC) $(CXXFLAGS) $^ $(LDFLAGS) -o $@

#------------------------------------------------------------------------------
# phony command
.PHONY: all
all:	build

.PHONY: build
build:	$(TARGET) 	

.PHONY: clean
clean:
	rm -f $(TARGET) $(DEPENDS) $(OBJS)

.PHONY: run
run:	build
	@./$(TARGET)
