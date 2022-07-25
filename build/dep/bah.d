build/debug/bah.o build/release/bah.o: src/bah.cpp src/bah.hpp src/mesh.hpp src/transformation.hpp \
  src/spline.hpp src/vectors.hpp src/winport.hpp src/util.hpp
src/bah.cpp src/bah.hpp src/mesh.hpp src/transformation.hpp :
  src/spline.hpp src/vectors.hpp src/winport.hpp src/util.hpp :
