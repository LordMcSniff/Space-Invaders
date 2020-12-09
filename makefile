OUT = builds/executables
CC = g++
ODIR = builds/"obj files"
SDIR = src
INCDIR = -IDependencies/include
LIBDIR = -LDependencies/lib -LDependencies/lib/GLFW
LIBS = -lglfw3 -lgdi32

_OBJS = main.o Engine.o Sprite.o \
        Texture.o
OBJS = $(patsubst %,$(ODIR)/%,$(_OBJS))

# clean:
#     rm -f $(ODIR)/*.o $(OUT)

# test:
#     echo $(OBJS)

game: Engine.o main.o
	g++ -Wall -g $(OBJS) -o $(OUT)/"Space Invaders".exe $(LIBDIR) $(LIBS)
# g++ -Wall -g $(OBJS) -o $(OUT)/"Space Invaders".exe Dependencies/lib/libglfw3.lib -lgdi32
#-lopengl32

############################################ OBJ Files #####################################################
main.o: Engine.o $(SDIR)/main.cpp $(SDIR)/main.h
	g++ -c $(INCDIR) $(SDIR)/main.cpp -o $(ODIR)/main.o

#--------------Engine--------------
ENDIR = $(SDIR)/Engine
Engine.o: Graphics $(ENDIR)/Engine.cpp $(ENDIR)/Engine.h
	g++ -c $(INCDIR) $(SDIR)/Engine/Engine.cpp -o $(ODIR)/Engine.o

#Engine -> Graphics
GRDIR = $(ENDIR)/Graphics
Graphics: Sprite.o

Sprite.o: Texture.o $(GRDIR)/Sprite.cpp $(GRDIR)/Sprite.h
	g++ -c $(INCDIR) $(GRDIR)/Sprite.cpp -o $(ODIR)/Sprite.o
#Engine -> Graphics -> Sprite
Texture.o: $(GRDIR)/Texture.cpp $(GRDIR)/Texture.h
	g++ -c $(INCDIR) $(GRDIR)/Texture.cpp -o $(ODIR)/Texture.o