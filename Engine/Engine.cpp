#include "Engine.h"

int Engine::SCREEN_WIDTH = 1024;
int Engine::SCREEN_HEIGHT = 768;
GLFWwindow* Engine::window = NULL;

Engine::Engine(/* args */)
{
}

Engine::~Engine()
{
}

bool Engine::Initialize(char* windowTitle)
{
    if (!glfwInit())
    {
        cout << "Error initializing GLFW" << endl;
        return false;
    }

    window = glfwCreateWindow(SCREEN_WIDTH,SCREEN_HEIGHT,windowTitle, );
}