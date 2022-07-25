build/debug/vectors.o build/release/vectors.o: src/vectors.cpp src/vectors.hpp src/winport.hpp \
  src/blockvectors.hpp
src/vectors.cpp src/vectors.hpp src/winport.hpp :
  src/blockvectors.hpp :
