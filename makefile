main: Engine.o main.o
	g++ -g main.o Engine.o -o builds\\"Space Invaders".exe



main.o: main.cpp main.h
	g++ -c main.cpp

Engine.o: Engine.cpp Engine.h
	g++ -c Engine.cpp

Texture.o: Texture.cpp
	g++ -c Texture.cpp

Sprite.o: Sprite.cpp
	g++ -c Sprite.cpp

                "-o", "builds\\Space Invaders.exe"
                // "-I", "${workspaceFolder}\\**",
                // "-I", "${workspaceFolder}\\Dependencies\\glfw-3.3.2.bin.WIN32\\include",
                // "-L", "${workspaceFolder}\\Dependencies\\glfw-3.3.2.bin.WIN32\\lib-vc2019",
                // "-l", "glfw3"
                // "-L", "${workspaceFolder}\\Dependencies\\glfw-3.3.2.bin.WIN32\\lib-vc2019"
            ],