CC = gcc
CFLAGS = -Wall -Wextra -g

TARGET = scheduler
SRCS = Main.c FCFS.c Gantt.c
OBJS = $(SRCS:.c=.o)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)
