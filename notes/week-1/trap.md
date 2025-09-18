# Traps

Trap cmd allows shell to execute commands when certain signals are received. similar to events

synatx

trap action signal

```bash
trap 'echo "Ctrl+C pressed"' SIGINT
```

There are alot of signals that can linux provides, some famous / actively use are

SIGINT – Sent when Ctrl+C pressed
SIGTERM – Terminate process gracefully
SIGKILL – Force kill process
SIGHUP – Terminal connection broken
SIGUSR1 – User defined signal 1

So trap is mostly used to change the default behavior of signals, A good example is SIGINT
Now what if we dont directly want to kill the process, but want to gracefully exit the process, then we can use Trap with SIGINT to handle it gracefully and do some cleanup tasks before exiting.
