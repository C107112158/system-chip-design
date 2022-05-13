#include <stdio.h>
#include <stdlib.h>
#include <Windows.h>
#include <time.h>
#include <conio.h>


// 定義遊戲區域的邊界寬度
#define   WIDTH        100
#define   HIGH         20 
// 定義蛇的最大長度
#define   MAX_LENGHT   20
// 定義遊戲初始速度
#define   SPEED        500


int key = 72;
int a,b;			
int life;				//生命 

// 定義遊戲中的兩個物件：食物和蛇
struct
{
	int x;
	int y;
}food;

struct
{
	int x;
	int y;
}bfood;

struct
{
	int len;
	int x_buf[MAX_LENGHT];
	int y_buf[MAX_LENGHT];
	int score;
}snake;

/*控制游標所在的位置*/ 
void gotoxy(int x, int y)
{
	COORD coord;
	coord.X = x;
	coord.Y = y;
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), coord);
}

/*繪製遊戲區域邊界*/ 
void DrawMap(void)
{
	int x, y;
	for (x = 0; x < WIDTH + 4; x += 2)
	{
		y = 0;
		gotoxy(x, y);
		printf("■");
		y = HIGH + 2;
		gotoxy(x, y);
		printf("■");
	}

	for (y = 1; y < HIGH + 2; y++)
	{
		x = 0;
		gotoxy(x, y);
		printf("■");
		x = WIDTH + 2;
		gotoxy(x, y);
		printf("■");
	}

	// 將游標移出遊戲區域
	gotoxy(0, HIGH + 5);
}

/*初始化小蛇*/ 
void CreateSnake(void)
{
	int orgin_x, orgin_y;
	
	life=3;
	
	orgin_x = WIDTH / 2 + 2;
	orgin_y = HIGH / 2 + 1;

	snake.len = 5;
	snake.x_buf[0] = orgin_x;
	snake.y_buf[0] = orgin_y;
	snake.x_buf[1] = orgin_x;
	snake.y_buf[1] = ++orgin_y;
	snake.x_buf[2] = orgin_x;
	snake.y_buf[2] = ++orgin_y;
	snake.x_buf[3] = orgin_x;
	snake.y_buf[3] = ++orgin_y;
	snake.x_buf[4] = orgin_x;
	snake.y_buf[4] = ++orgin_y;
	snake.score = 5;

	int i;
	for (i = 0; i < snake.len; i++)
	{
		gotoxy(snake.x_buf[i], snake.y_buf[i]);
		printf("■");
	}
	gotoxy(0, HIGH + 5);
}

/*隨機創造一個好食物*/
void CreateGFood(void)
{	
	int flag = 0,i;
	do{
	food.x = (rand() % (WIDTH/2))*2 + 2;
	food.y = rand() % HIGH + 1;
	// 判斷生成的食物是否和蛇身重合
	for (int i = 0; i < snake.len; i++)
	{
		if (snake.x_buf[i] == food.x && snake.y_buf[i] == food.y)
		{
			flag = 1;
			break;
		}
	}
	} while (flag);

	gotoxy(food.x, food.y);
	printf("＋");
	gotoxy(0, HIGH + 5);
	Sleep(100);
	
	

}
/*隨機創造一個壞食物*/
void CreateBFood(void)
{	
	int flag = 0,i;
	do{
	bfood.x = (rand() % (WIDTH/2))*2 + 2;
	bfood.y = rand() % HIGH + 1;
	// 判斷生成的食物是否和蛇身重合
	for (int i = 0; i < snake.len; i++)
	{
		if (snake.x_buf[i] == bfood.x && snake.y_buf[i] == bfood.y)
		{
			flag = 1;
			break;
		}
	}
	} while (flag);

	gotoxy(bfood.x, bfood.y);
	printf("－");
	gotoxy(0, HIGH + 5);
	Sleep(100);
	
}

/*蛇移動*/ 
void SnakeMove(int x, int y)
{
	// 判斷是否吃到食物，吃到長度加1
	if (a==1)
	{
		snake.len++;
		
	}
		
	// 沒吃到則抹去最後一節
	else
	{
		gotoxy(snake.x_buf[snake.len - 1], snake.y_buf[snake.len - 1]);
		printf("  ");
	}
	int i;
	for (i = snake.len - 1; i > 0; i--)
	{
		snake.x_buf[i] = snake.x_buf[i - 1];
		snake.y_buf[i] = snake.y_buf[i - 1];
	}
	snake.x_buf[0] = x;
	snake.y_buf[0] = y;
	gotoxy(snake.x_buf[0], snake.y_buf[0]);
	printf("■");
	gotoxy(0, HIGH + 5);
	
}

void move()
{
	int pre_key = key, x, y;

	if (_kbhit())//如果使用者按下了鍵盤中的某個鍵
	{
		fflush(stdin);//清空緩衝區的字元

		//getch()讀取方向鍵的時候，會返回兩次，第一次呼叫返回0或者224，第二次呼叫返回的才是實際值
		key = _getch();//第一次呼叫返回的不是實際值
		key = _getch();//第二次呼叫返回實際值
	}

	// 小蛇移動方向不能和上一次的方向相反
	if (pre_key == 72 && key == 80)
		key = 72;
	if (pre_key == 80 && key == 72)
		key = 80;
	if (pre_key == 75 && key == 77)
		key = 75;
	if (pre_key == 77 && key == 75)
		key = 77;

	switch (key)
	{
	case 75:
		x = snake.x_buf[0] - 2;//往左
		y = snake.y_buf[0];
		break;
	case 77:
		x = snake.x_buf[0] + 2;//往右
		y = snake.y_buf[0];
		break;
	case 72:
		x = snake.x_buf[0];
		y = snake.y_buf[0] - 1;//往上
		break;
	case 80:
		x = snake.x_buf[0];
		y = snake.y_buf[0] + 1;//往下
		break;
	}
	
	SnakeMove(x, y);
} 


/*檢查*/
void check(void)
{
	int i;
	 
	/**************************** 失敗條件 ****************************/ 
	
	if (snake.x_buf[0] == 0 | snake.x_buf[0] == WIDTH+4 | snake.y_buf[0] == 0 | snake.y_buf[0] == HIGH+2 )
	{
		life--;
		for (i = 0; i < snake.len; i++)
		{
			gotoxy(snake.x_buf[i] = WIDTH / 2 + 2, snake.y_buf[i] = HIGH / 2 + 1);	
		}
		life=life+1 ;
	}
	
	/*撞到自己*/
	for (i = 1; i < snake.len; i++)
	{
		if (snake.x_buf[0] == snake.x_buf[i] && snake.y_buf[0] == snake.y_buf[i])
		{
			life--;
	
			for (i = 0; i < snake.len; i++)
			{
				gotoxy(snake.x_buf[i] = WIDTH / 2 + 2, snake.y_buf[i] = HIGH / 2 + 1);
				system("cls");
				DrawMap();
			}
		}
	}
	
	/**************************** 勝利條件 ****************************/ 
	if (snake.len == MAX_LENGHT)//到達最大長度勝利 
	{
		printf("Your are win!\n");
		exit(0);
	}
	
	// 列印得分
	gotoxy(0, HIGH + 6);
	printf("Your score: %d\n", snake.score);
	printf("Your life: %d\n", life);
}

int main(void)
{
	DrawMap();
	CreateSnake();

	while (1)
	{
		CreateGFood();
		CreateBFood();
		move();
		// 用於控制遊戲的速度
		Sleep(500);
		
		check();
		if(life==0)
		{
			printf("Game Over!\n");
			exit(0);
		}
	}
}