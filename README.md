# Bash Hunting 

This repo is my personal journey to **master advanced Bash scripting** and **bare-metal automation** in 1 month (2h/day, 5 days/week).

The goal: build safe, idempotent scripts, bootstrap servers automatically, and transition towards **Ansible + declarative workflows**.

---

## 📅 Learning Roadmap (4 Weeks)

### Week 1 – Bash Foundations (Safe & Modern)

**Goals:**
- Write safe Bash (strict mode, logging, traps).
- Understand variables, arrays, loops, and input handling.
- Create idempotent scripts with clear logging.

**To-Do:**
- [ ] Learn strict mode: `set -Eeuo pipefail`, `IFS`
- [ ] Write a reusable script template with logging + traps
- [ ] Practice input handling (`getopts`, env vars, config)
- [ ] Review file/text processing (`sed`, `awk`, `xargs`, `grep`)
- [ ] Mini-project: **User bootstrap script** (create user, SSH keys, sudo, logging)
- [ ] Run **ShellCheck** + **shfmt** on scripts

---

### Week 2 – Advanced Bash & Testing

**Goals:**
- Build modular Bash “libraries.”
- Manage background jobs and parallel tasks.
- Write unit tests for Bash scripts.

**To-Do:**
- [ ] Deep dive into parameter expansion & regex
- [ ] Practice loops + parallel execution (`xargs -P`, GNU parallel)
- [ ] Create modular bash libraries (`roles/users.sh`, `roles/services.sh`)
- [ ] Add error handling with `trap` and cleanup
- [ ] Learn **bats-core** for testing Bash
- [ ] Mini-project: **Service setup script** (e.g., install + configure nginx/postgres)
- [ ] Add bats tests for service setup

---

### Week 3 – Bare-Metal Automation

**Goals:**
- Automate server lifecycle (PXE boot, installs, OOB).
- Manage services via systemd.
- Drive automation from inventory (YAML/CSV).

**To-Do:**
- [ ] Study PXE/iPXE basics, Kickstart/Preseed/Autoinstall
- [ ] Write systemd unit files + hardening options
- [ ] Automate OOB management with `ipmitool` (power/reset)
- [ ] Practice using `yq`/`jq` for inventory-driven config
- [ ] Mini-project: **Server bootstrap script**  
  - Reads from inventory  
  - Configures hostname, users, SSH, packages  
  - Deploys a systemd service  

---


### Week 4 – Beyond Bash (Better Practices)

**Goals:**
- Learn when to use Bash vs Ansible.
- Transition scripts into Ansible roles.
- Securely manage secrets + monitoring.

**To-Do:**
- [ ] Intro to Ansible: inventory, playbooks, tasks
- [ ] Run Bash scripts via Ansible tasks
- [ ] Build Ansible roles from scripts (users, services)
- [ ] Learn secrets management (Ansible Vault, sops/age)
- [ ] Automate monitoring setup (Prometheus node_exporter, journald logging)
- [ ] Capstone project: **Server build pipeline**  
  - PXE boot → Bash bootstrap → Ansible config → Systemd services  
  - Document workflow in repo  

---

## 🛠 Tools to Install

- **Bash helpers:** `ShellCheck`, `shfmt`, `bats-core`
- **Inventory tools:** `yq`, `jq`
- **Infra tools:** `ipmitool`, `systemd`
- **Config management:** `ansible`, `sops` (optional)
