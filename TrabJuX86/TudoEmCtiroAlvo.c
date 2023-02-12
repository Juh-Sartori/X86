#include <stdio.h>
#include <math.h>

// Juliana Sartori//

int main()
{

    int C, T, i, j, tiroX, tiroY, pontuacao = 0;
    double result;

    scanf("%d %d", &C, &T);

    int circulo[C];

    for (i = 0; i < C; i++)
    {

        scanf("%d", &circulo[i]);
    }

    for (i = 0; i < T; i++)
    {

        scanf("%d %d", &tiroX, &tiroY);

        result = sqrt((tiroX * tiroX) + (tiroY * tiroY)); // distancai do tiro em relacao ao centro

        if (result <= circulo[0])
        {
            pontuacao += C;
        }
        else
        {

            for (j = C - 1; j >= 0; j--)
            {

                if (result > circulo[j])
                {

                    pontuacao += C - j - 1;
                    break;
                }
            }
        }
    }

    printf("\n%d", pontuacao);

    return 0;
}