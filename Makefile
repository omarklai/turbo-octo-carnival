# GNU Makefile for Macromedia Flash Local Content Updater
# This links against system -lz rather than building zlib

# Default target
BIN := LocalContentUpdater
all: ${BIN}

# Build flags (debug for now)
CXXFLAGS := -g
INCPATHS :=
LDFLAGS :=
LIBS := -lz

# Common source files
COMMON_PATH := ../common
COMMON_SRCS :=	LocalContentUpdater.cpp \
				SwfBuffer.cpp \
				readDir.cpp
SRCS := ${SRCS} $(addprefix ${COMMON_PATH}/, ${COMMON_SRCS})

# Header dependencies (specifying manually for now, not using makedepend)
${COMMON_PATH}/UseNetwork.o: ${COMMON_PATH}/SwfBuffer.h
${COMMON_PATH}/UseNetwork.o: ${COMMON_PATH}/readDir.h
${COMMON_PATH}/UseNetwork.o: ${COMMON_PATH}/version.h
${COMMON_PATH}/SwfBuffer.o: ${COMMON_PATH}/SwfBuffer.h
${COMMON_PATH}/readDir.o: ${COMMON_PATH}/readDir.h

# Object targets
OBJS := $(addsuffix .o, $(basename ${SRCS}))
${OBJS}: %.o: %.cpp
	${CXX} -c ${CXXFLAGS} ${INCPATHS} $< -o $@

# Main target
${BIN}: ${OBJS}
	${CXX} ${LDFLAGS} -o $@ ${OBJS} ${LIBS}

# Cleanup target
.PHONY: clean
clean:
	rm -f ${OBJS} ${BIN}

# End of file.
# GNU Makefile for Macromedia Flash Local Content Updater
# This links against system -lz rather than building zlib

# Default target
BIN := LocalContentUpdater
all: ${BIN}

# Build flags (debug for now)
CXXFLAGS := -g
INCPATHS :=
LDFLAGS :=
LIBS := -lz

# Common source files
COMMON_PATH := ../common
COMMON_SRCS :=	LocalContentUpdater.cpp \
				SwfBuffer.cpp \
				readDir.cpp
SRCS := ${SRCS} $(addprefix ${COMMON_PATH}/, ${COMMON_SRCS})

# Header dependencies (specifying manually for now, not using makedepend)
${COMMON_PATH}/UseNetwork.o: ${COMMON_PATH}/SwfBuffer.h
${COMMON_PATH}/UseNetwork.o: ${COMMON_PATH}/readDir.h
${COMMON_PATH}/UseNetwork.o: ${COMMON_PATH}/version.h
${COMMON_PATH}/SwfBuffer.o: ${COMMON_PATH}/SwfBuffer.h
${COMMON_PATH}/readDir.o: ${COMMON_PATH}/readDir.h

# Object targets
OBJS := $(addsuffix .o, $(basename ${SRCS}))
${OBJS}: %.o: %.cpp
	${CXX} -c ${CXXFLAGS} ${INCPATHS} $< -o $@

# Main target
${BIN}: ${OBJS}
	${CXX} ${LDFLAGS} -o $@ ${OBJS} ${LIBS}

# Cleanup target
.PHONY: clean
clean:
	rm -f ${OBJS} ${BIN}

# End of file.
