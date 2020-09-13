version 1.0

task Ansible {
  input {
    String? args
    Boolean? ask_become_pass
    Boolean? ask_pass
    Boolean? ask_su_pass
    Boolean? ask_sudo_pass
    Boolean? ask_vault_pass
    String? background
    Boolean? become
    String? become_method
    String? become_user
    Boolean? check
    String? connection
    String? extra_vars
    Int? forks
    File? inventory_file
    String? limit
    Boolean? list_hosts
    String? module_name
    File? module_path
    Boolean? one_line
    Int? poll
    File? private_key
    Boolean? su
    String? su_user
    Boolean? sudo
    String? sudo_user
    Int? timeout
    Directory? tree
    String? user
    File? vault_password_file
    Boolean? verbose
    String host_pattern
  }
  command <<<
    ansible \
      ~{host_pattern} \
      ~{if defined(args) then ("--args " +  '"' + args + '"') else ""} \
      ~{if (ask_become_pass) then "--ask-become-pass" else ""} \
      ~{if (ask_pass) then "--ask-pass" else ""} \
      ~{if (ask_su_pass) then "--ask-su-pass" else ""} \
      ~{if (ask_sudo_pass) then "--ask-sudo-pass" else ""} \
      ~{if (ask_vault_pass) then "--ask-vault-pass" else ""} \
      ~{if defined(background) then ("--background " +  '"' + background + '"') else ""} \
      ~{if (become) then "--become" else ""} \
      ~{if defined(become_method) then ("--become-method " +  '"' + become_method + '"') else ""} \
      ~{if defined(become_user) then ("--become-user " +  '"' + become_user + '"') else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if defined(connection) then ("--connection " +  '"' + connection + '"') else ""} \
      ~{if defined(extra_vars) then ("--extra-vars " +  '"' + extra_vars + '"') else ""} \
      ~{if defined(forks) then ("--forks " +  '"' + forks + '"') else ""} \
      ~{if defined(inventory_file) then ("--inventory-file " +  '"' + inventory_file + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (list_hosts) then "--list-hosts" else ""} \
      ~{if defined(module_name) then ("--module-name " +  '"' + module_name + '"') else ""} \
      ~{if defined(module_path) then ("--module-path " +  '"' + module_path + '"') else ""} \
      ~{if (one_line) then "--one-line" else ""} \
      ~{if defined(poll) then ("--poll " +  '"' + poll + '"') else ""} \
      ~{if defined(private_key) then ("--private-key " +  '"' + private_key + '"') else ""} \
      ~{if (su) then "--su" else ""} \
      ~{if defined(su_user) then ("--su-user " +  '"' + su_user + '"') else ""} \
      ~{if (sudo) then "--sudo" else ""} \
      ~{if defined(sudo_user) then ("--sudo-user " +  '"' + sudo_user + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(vault_password_file) then ("--vault-password-file " +  '"' + vault_password_file + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    args: "module arguments"
    ask_become_pass: "ask for privilege escalation password"
    ask_pass: "ask for SSH password"
    ask_su_pass: "ask for su password (deprecated, use become)"
    ask_sudo_pass: "ask for sudo password (deprecated, use become)"
    ask_vault_pass: "ask for vault password"
    background: "run asynchronously, failing after X seconds\\n(default=N/A)"
    become: "run operations with become (nopasswd implied)"
    become_method: "privilege escalation method to use (default=sudo),\\nvalid choices: [ sudo | su | pbrun | pfexec | runas ]"
    become_user: "run operations as this user (default=None)"
    check: "don't make any changes; instead, try to predict some\\nof the changes that may occur"
    connection: "connection type to use (default=smart)"
    extra_vars: "set additional variables as key=value or YAML/JSON"
    forks: "specify number of parallel processes to use\\n(default=5)"
    inventory_file: "specify inventory host file\\n(default=/etc/ansible/hosts)"
    limit: "further limit selected hosts to an additional pattern"
    list_hosts: "outputs a list of matching hosts; does not execute\\nanything else"
    module_name: "module name to execute (default=command)"
    module_path: "specify path(s) to module library (default=None)"
    one_line: "condense output"
    poll: "set the poll interval if using -B (default=15)"
    private_key: "use this file to authenticate the connection"
    su: "run operations with su (deprecated, use become)"
    su_user: "run operations with su as this user (default=root)\\n(deprecated, use become)"
    sudo: "run operations with sudo (nopasswd) (deprecated, use\\nbecome)"
    sudo_user: "desired sudo user (default=root) (deprecated, use\\nbecome)"
    timeout: "override the SSH timeout in seconds (default=10)"
    tree: "log output to this directory"
    user: "connect as this user (default=root)"
    vault_password_file: "vault password file"
    verbose: "verbose mode (-vvv for more, -vvvv to enable\\nconnection debugging)"
    host_pattern: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_tree = "${in_tree}"
  }
}