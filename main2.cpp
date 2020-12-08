#include <iostream>
#include "Engine/Engine.h"

using namespace std;

int main()
{
    cout << "Startup!" << endl;

    Engine engine;

    
    engine.Initialize("Space Invaders  v0.1.0-by LordMcSniff");

    while (true)
    {
        engine.Update();
        engine.Render();
    }
    

    return 0;
}