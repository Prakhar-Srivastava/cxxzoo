PROJECT(pytorch_one)
CMAKE_MINIMUM_REQUIRED(VERSION 3.17 FATAL_ERROR)

SET(CMAKE_CXX_STANDARD 20)
SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

FIND_PACKAGE(Torch REQUIRED)

IF (${TORCH_FOUND})
	MESSAGE(STATUS "FOUND TORCH LIB")
ELSE (${TORCH_FOUND})
	MESSAGE(FATAL_ERROR "CAN'T FIND TORCHLIB")
ENDIF (${TORCH_FOUND})
	
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TORCH_CXX_FLAGS}")

ADD_EXECUTABLE(one one.cpp)
TARGET_LINK_LIBRARIES(one ${TORCH_LIBRARIES})

