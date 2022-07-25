build/debug/mesh.o build/release/mesh.o: src/mesh.cpp src/mesh.hpp src/transformation.hpp src/spline.hpp \
  src/vectors.hpp src/winport.hpp src/geometry.hpp src/util.hpp
src/mesh.cpp src/mesh.hpp src/transformation.hpp src/spline.hpp :
  src/vectors.hpp src/winport.hpp src/geometry.hpp src/util.hpp :
