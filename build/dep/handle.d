build/debug/handle.o build/release/handle.o: src/handle.cpp src/handle.hpp src/constraint.hpp src/mesh.hpp \
  src/transformation.hpp src/spline.hpp src/vectors.hpp src/winport.hpp \
  src/sparse.hpp src/util.hpp src/magic.hpp
src/handle.cpp src/handle.hpp src/constraint.hpp src/mesh.hpp :
  src/transformation.hpp src/spline.hpp src/vectors.hpp src/winport.hpp :
  src/sparse.hpp src/util.hpp src/magic.hpp :
