#include <stdio.h>
#include <math.h>

// Juliana Sartori//
int func();
int main(void)
{

    int C, T, i, j, tiroX, tiroY, result, pontuacao = 0;
    scanf("%d %d", &C, &T);

    int circulo[C];

    for (i = 0; i < C; i++)
    {

        scanf("%d", &circulo[i]);
    }

    for (i = 0; i < T; i++)
    {

        scanf("%d %d", &tiroX, &tiroY);

        result = ceil(sqrt((tiroX * tiroX) + (tiroY * tiroY))); // distancai do tiro em relacao ao centro
        pontuacao += func(result, C, circulo);
    }

    printf("\n%d", pontuacao);

    return 0;
}