build/debug/remesh.o build/release/remesh.o: src/remesh.cpp src/remesh.hpp src/mesh.hpp \
  src/transformation.hpp src/spline.hpp src/vectors.hpp src/winport.hpp \
  src/blockvectors.hpp src/geometry.hpp src/util.hpp src/io.hpp \
  src/magic.hpp
src/remesh.cpp src/remesh.hpp src/mesh.hpp :
  src/transformation.hpp src/spline.hpp src/vectors.hpp src/winport.hpp :
  src/blockvectors.hpp src/geometry.hpp src/util.hpp src/io.hpp :
  src/magic.hpp :
