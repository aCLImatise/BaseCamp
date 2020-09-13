version 1.0

task Ansibleplaybook {
  input {
    Boolean? ask_become_pass
    Boolean? ask_pass
    Boolean? ask_su_pass
    Boolean? ask_sudo_pass
    Boolean? ask_vault_pass
    Boolean? become
    String? become_method
    String? become_user
    Boolean? check
    String? connection
    Boolean? diff
    String? extra_vars
    Boolean? flush_cache
    Boolean? force_handlers
    Int? forks
    File? inventory_file
    String? limit
    Boolean? list_hosts
    Boolean? list_tags
    Boolean? list_tasks
    File? module_path
    File? private_key
    String? skip_tags
    String? start_at_task
    Boolean? step
    Boolean? su
    String? su_user
    Boolean? sudo
    String? sudo_user
    Boolean? syntax_check
    String? tags
    Int? timeout
    String? user
    File? vault_password_file
    Boolean? verbose
    String playbook_doty_ml
  }
  command <<<
    ansible_playbook \
      ~{playbook_doty_ml} \
      ~{if (ask_become_pass) then "--ask-become-pass" else ""} \
      ~{if (ask_pass) then "--ask-pass" else ""} \
      ~{if (ask_su_pass) then "--ask-su-pass" else ""} \
      ~{if (ask_sudo_pass) then "--ask-sudo-pass" else ""} \
      ~{if (ask_vault_pass) then "--ask-vault-pass" else ""} \
      ~{if (become) then "--become" else ""} \
      ~{if defined(become_method) then ("--become-method " +  '"' + become_method + '"') else ""} \
      ~{if defined(become_user) then ("--become-user " +  '"' + become_user + '"') else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if defined(connection) then ("--connection " +  '"' + connection + '"') else ""} \
      ~{if (diff) then "--diff" else ""} \
      ~{if defined(extra_vars) then ("--extra-vars " +  '"' + extra_vars + '"') else ""} \
      ~{if (flush_cache) then "--flush-cache" else ""} \
      ~{if (force_handlers) then "--force-handlers" else ""} \
      ~{if defined(forks) then ("--forks " +  '"' + forks + '"') else ""} \
      ~{if defined(inventory_file) then ("--inventory-file " +  '"' + inventory_file + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (list_hosts) then "--list-hosts" else ""} \
      ~{if (list_tags) then "--list-tags" else ""} \
      ~{if (list_tasks) then "--list-tasks" else ""} \
      ~{if defined(module_path) then ("--module-path " +  '"' + module_path + '"') else ""} \
      ~{if defined(private_key) then ("--private-key " +  '"' + private_key + '"') else ""} \
      ~{if defined(skip_tags) then ("--skip-tags " +  '"' + skip_tags + '"') else ""} \
      ~{if defined(start_at_task) then ("--start-at-task " +  '"' + start_at_task + '"') else ""} \
      ~{if (step) then "--step" else ""} \
      ~{if (su) then "--su" else ""} \
      ~{if defined(su_user) then ("--su-user " +  '"' + su_user + '"') else ""} \
      ~{if (sudo) then "--sudo" else ""} \
      ~{if defined(sudo_user) then ("--sudo-user " +  '"' + sudo_user + '"') else ""} \
      ~{if (syntax_check) then "--syntax-check" else ""} \
      ~{if defined(tags) then ("--tags " +  '"' + tags + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(vault_password_file) then ("--vault-password-file " +  '"' + vault_password_file + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    ask_become_pass: "ask for privilege escalation password"
    ask_pass: "ask for SSH password"
    ask_su_pass: "ask for su password (deprecated, use become)"
    ask_sudo_pass: "ask for sudo password (deprecated, use become)"
    ask_vault_pass: "ask for vault password"
    become: "run operations with become (nopasswd implied)"
    become_method: "privilege escalation method to use (default=sudo),\\nvalid choices: [ sudo | su | pbrun | pfexec | runas ]"
    become_user: "run operations as this user (default=None)"
    check: "don't make any changes; instead, try to predict some\\nof the changes that may occur"
    connection: "connection type to use (default=smart)"
    diff: "when changing (small) files and templates, show the\\ndifferences in those files; works great with --check"
    extra_vars: "set additional variables as key=value or YAML/JSON"
    flush_cache: "clear the fact cache"
    force_handlers: "run handlers even if a task fails"
    forks: "specify number of parallel processes to use\\n(default=5)"
    inventory_file: "specify inventory host file\\n(default=/etc/ansible/hosts)"
    limit: "further limit selected hosts to an additional pattern"
    list_hosts: "outputs a list of matching hosts; does not execute\\nanything else"
    list_tags: "list all available tags"
    list_tasks: "list all tasks that would be executed"
    module_path: "specify path(s) to module library (default=None)"
    private_key: "use this file to authenticate the connection"
    skip_tags: "only run plays and tasks whose tags do not match these\\nvalues"
    start_at_task: "start the playbook at the task matching this name"
    step: "one-step-at-a-time: confirm each task before running"
    su: "run operations with su (deprecated, use become)"
    su_user: "run operations with su as this user (default=root)\\n(deprecated, use become)"
    sudo: "run operations with sudo (nopasswd) (deprecated, use\\nbecome)"
    sudo_user: "desired sudo user (default=root) (deprecated, use\\nbecome)"
    syntax_check: "perform a syntax check on the playbook, but do not\\nexecute it"
    tags: "only run plays and tasks tagged with these values"
    timeout: "override the SSH timeout in seconds (default=10)"
    user: "connect as this user (default=root)"
    vault_password_file: "vault password file"
    verbose: "verbose mode (-vvv for more, -vvvv to enable\\nconnection debugging)"
    playbook_doty_ml: ""
  }
  output {
    File out_stdout = stdout()
  }
}