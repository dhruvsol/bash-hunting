# Bash Hunting 

This repo is my personal journey to **master advanced Bash scripting** and **bare-metal automation** in 1 month (2h/day, 5 days/week).

The goal: build safe, idempotent scripts, bootstrap servers automatically, and transition towards **Ansible + declarative workflows**.

By the end, you’ll have:  
- Advanced Bash skills (strict mode, modular scripts, testing)  
- Reusable automation scripts for server bootstrap  
- Systemd + IPMI automation for bare-metal  
- Starter Ansible setup to move beyond Bash  

---

## 📅 Week 1 – Bash Foundations (Safe & Modern)

**Goal:** Build safe, reusable Bash scripts with strict mode, error handling, and logging.

- **Day 1**  
  - [ ] Learn and enable strict mode (`set -Eeuo pipefail`, `IFS`)  
  - [ ] Create a script template with logging + traps  

- **Day 2**  
  - [ ] Practice functions, variables, arrays  
  - [ ] Handle input with `getopts` and env vars  

- **Day 3**  
  - [ ] Implement error handling (`trap`, exit codes)  
  - [ ] Add cleanup function + logging to your template  

- **Day 4**  
  - [ ] Practice file/text processing: `sed`, `awk`, `grep`, `cut`, `xargs`  
  - [ ] Learn safe file handling (`mktemp`, `install`, checksums)  

- **Day 5 (Mini-Project)**  
  - [ ] Script to bootstrap a server user (add user, SSH key, sudo, umask)  
  - [ ] Run **ShellCheck** + **shfmt** on the script  

---

## 📅 Week 2 – Advanced Bash & Testing

**Goal:** Write modular scripts and test them.

- **Day 6**  
  - [ ] Learn advanced parameter expansion + regex  
  - [ ] Use `[[ ]]` vs `[ ]`  

- **Day 7**  
  - [ ] Practice loops (`for`, `while`)  
  - [ ] Try parallelism (`xargs -P`, GNU parallel)  

- **Day 8**  
  - [ ] Build modular Bash libraries (e.g., `roles/users.sh`)  
  - [ ] Learn sourcing and reusing functions  

- **Day 9**  
  - [ ] Install **bats-core**  
  - [ ] Write first unit test for a script  

- **Day 10 (Mini-Project)**  
  - [ ] Write a service setup script (e.g., install + configure nginx/postgres)  
  - [ ] Add bats tests to validate behavior  

---

## 📅 Week 3 – Bare-Metal Automation

**Goal:** Automate full server lifecycle, services, and inventory-driven configs.

- **Day 11**  
  - [ ] Study PXE/iPXE basics  
  - [ ] Learn Kickstart/Preseed/Autoinstall workflow  

- **Day 12**  
  - [ ] Write a systemd unit file  
  - [ ] Add hardening options (e.g., `ProtectSystem`, `PrivateTmp`)  

- **Day 13**  
  - [ ] Learn IPMI/Redfish basics  
  - [ ] Script power/reset with `ipmitool`  

- **Day 14**  
  - [ ] Learn YAML/CSV parsing with `yq` + `jq`  
  - [ ] Drive automation from inventory  

- **Day 15 (Mini-Project)**  
  - [ ] Write a “new server bootstrap” script that:  
    - Reads inventory  
    - Configures hostname, users, sshd  
    - Installs base packages  
    - Deploys a systemd service  

---

## 📅 Week 4 – Beyond Bash (Better Practices)

**Goal:** Learn Ansible + modern practices (secrets, monitoring, pipelines).

- **Day 16**  
  - [ ] Install Ansible  
  - [ ] Write first playbook (inventory + tasks)  

- **Day 17**  
  - [ ] Run a Bash script via Ansible task  
  - [ ] Convert a script into an Ansible role  

- **Day 18**  
  - [ ] Learn secrets management (Ansible Vault, sops/age)  
  - [ ] Store and load secrets securely  

- **Day 19**  
  - [ ] Automate monitoring setup (Prometheus node_exporter, journald log shipping)  
  - [ ] Add automated health checks  

- **Day 20 (Capstone Project)**  
  - [ ] Build a full **server pipeline**:  
    - PXE boot → Bash bootstrap → Ansible config → Systemd services  
  - [ ] Document workflow in repo README  

---


By the end of this plan, you’ll:  
- Be fluent in **advanced Bash scripting** (safe, idempotent, tested).  
- Have working **server bootstrap scripts** for bare-metal.  
- Know how to use **systemd + OOB automation**.  
- Have a starter **Ansible setup** built from your Bash scripts.  
- Own a reproducible **server build pipeline**.  
