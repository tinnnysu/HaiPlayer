#include "SDL.h"
#include "libavformat/avformat.h"

int main(int argc, char* argv[])
{
	av_register_all();
	SDL_Delay(5000);
	return 0;
}
