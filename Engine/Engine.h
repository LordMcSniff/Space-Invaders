#ifndef GAME_ENGINE
#define GAME_ENGINE


#include "GLFW/glfw3.h"
#pragma comment(lib, "opengl32.lib")

#include <iostream>
using namespace std;

class Engine
{
private:
    static GLFWwindow* window;
public:
    static int SCREEN_WIDTH;
    static int SCREEN_HEIGHT;

    Engine(/* args */);
    ~Engine();

    bool Initialize(char* windowTitle,int width,int height);

    void Update();
    void Render();
};

#endif
