# Handling Logs in Bash

Logging is essential for debugging, monitoring, and keeping track of
script execution. Bash provides multiple ways to handle logs depending
on the use case.

---

## 1. Using `echo`

`echo` is the simplest way to log messages. It prints text to
**stdout**.

```bash
#!/bin/bash
echo "Starting the script..."
```

- ✅ Easy to use\
- ❌ No log levels or timestamps by default

---

## 2. Using `logger`

`logger` sends log messages to the **system logger** (`syslog` or
`journald` depending on the system).

```bash
#!/bin/bash
logger "My script has started"
```

You can add tags or priority levels:

```bash
logger -t myscript -p user.info "Process completed successfully"
```

- ✅ Integrates with system logs\
- ✅ Supports log levels and tags\
- ❌ Requires system access to view logs (`/var/log/syslog`,
  `journalctl`, etc.)

---

## 3. Using `tee`

`tee` writes output to both **stdout** and a file. This is useful when
you want to see logs on the terminal _and_ save them.

```bash
#!/bin/bash
echo "Script started" | tee script.log
```

Appending instead of overwriting:

```bash
echo "Another log entry" | tee -a script.log
```

- ✅ Saves logs while still showing them in real time\
- ✅ Useful for long-running scripts\
- ❌ No built-in log levels

---

## Recommended Practice

For most scripts:\

- Use `echo` for simple debugging.\
- Use `tee` to keep a persistent log file while still seeing output.\
- Use `logger` when logs should integrate with system monitoring tools.
