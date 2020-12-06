#ifndef GAME_ENGINE
#define GAME_ENGINE


#include "GLFW/glfw3.h"

#include <iostream>
using namespace std;

class Engine
{
private:
    /* data */
public:
    static int SCREEN_WIDTH;
    static int SCREEN_HEIGHT;

    Engine(/* args */);
    ~Engine();

    bool Initialize(char* windowTitle);
};







#endif
