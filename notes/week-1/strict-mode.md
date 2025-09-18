# Strict Mode in Bash

Strict Mode is a way to write safer Bash scripts by enforcing strict
parsing rules and preventing errors from being ignored. When enabled,
scripts exit immediately if an error occurs.

---

## Shebang Line

The **shebang line** defines which shell should execute the script.

Standard shebang line:

```bash
#!/bin/bash
```

If you change the shebang line to another shell, the script may run
differently and cause unexpected behavior.

---

## Strict Mode Options

### 1. Exit on Error

```bash
#!/bin/bash
set -e
```

This makes the script exit if any command fails.

If you want to handle errors manually without exiting, you can
temporarily disable strict mode:

```bash
set +e
# Commands here can fail without exiting the script
set -e
# Commands here will exit the script if they fail
```

---

### 2. Exit on Uninitialized Variables

```bash
#!/bin/bash
set -u
```

This makes the script exit if an undeclared variable is used.

---

### 3. Exit on Pipeline Failures

```bash
#!/bin/bash
set -o pipefail
```

This ensures the script exits if **any** command in a pipeline fails.

---

## Recommended Strict Mode Setup

Pipelines are widely used in scripts, so `pipefail` is especially
important.\
The safest approach is to combine all options:

```bash
#!/bin/bash
set -euo pipefail
```

This enforces: - Exit on errors (`-e`) - Exit on uninitialized variables
(`-u`) - Fail pipelines on error (`-o pipefail`)

---

## Debugging with Strict Mode

For debugging, you can add `-x` to print each command before it
executes:

```bash
#!/bin/bash
set -euxo pipefail
```

This combines strict mode with command tracing.
