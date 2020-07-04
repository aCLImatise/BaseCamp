version 1.0

task AnsiblePlaybook {
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
    String? forks
    String? inventory_file
    String? limit
    Boolean? list_hosts
    Boolean? list_tags
    Boolean? list_tasks
    String? module_path
    String? private_key
    String? skip_tags
    String? start_at_task
    Boolean? step
    Boolean? su
    String? su_user
    Boolean? sudo
    String? sudo_user
    Boolean? syntax_check
    String? tags
    String? timeout
    String? user
    String? vault_password_file
    Boolean? verbose
    String playbook_doty_ml
  }
  command <<<
    ansible-playbook \
      ~{playbook_doty_ml} \
      ~{true="--ask-become-pass" false="" ask_become_pass} \
      ~{true="--ask-pass" false="" ask_pass} \
      ~{true="--ask-su-pass" false="" ask_su_pass} \
      ~{true="--ask-sudo-pass" false="" ask_sudo_pass} \
      ~{true="--ask-vault-pass" false="" ask_vault_pass} \
      ~{true="--become" false="" become} \
      ~{if defined(become_method) then ("--become-method " +  '"' + become_method + '"') else ""} \
      ~{if defined(become_user) then ("--become-user " +  '"' + become_user + '"') else ""} \
      ~{true="--check" false="" check} \
      ~{if defined(connection) then ("--connection " +  '"' + connection + '"') else ""} \
      ~{true="--diff" false="" diff} \
      ~{if defined(extra_vars) then ("--extra-vars " +  '"' + extra_vars + '"') else ""} \
      ~{true="--flush-cache" false="" flush_cache} \
      ~{true="--force-handlers" false="" force_handlers} \
      ~{if defined(forks) then ("--forks " +  '"' + forks + '"') else ""} \
      ~{if defined(inventory_file) then ("--inventory-file " +  '"' + inventory_file + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{true="--list-hosts" false="" list_hosts} \
      ~{true="--list-tags" false="" list_tags} \
      ~{true="--list-tasks" false="" list_tasks} \
      ~{if defined(module_path) then ("--module-path " +  '"' + module_path + '"') else ""} \
      ~{if defined(private_key) then ("--private-key " +  '"' + private_key + '"') else ""} \
      ~{if defined(skip_tags) then ("--skip-tags " +  '"' + skip_tags + '"') else ""} \
      ~{if defined(start_at_task) then ("--start-at-task " +  '"' + start_at_task + '"') else ""} \
      ~{true="--step" false="" step} \
      ~{true="--su" false="" su} \
      ~{if defined(su_user) then ("--su-user " +  '"' + su_user + '"') else ""} \
      ~{true="--sudo" false="" sudo} \
      ~{if defined(sudo_user) then ("--sudo-user " +  '"' + sudo_user + '"') else ""} \
      ~{true="--syntax-check" false="" syntax_check} \
      ~{if defined(tags) then ("--tags " +  '"' + tags + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(vault_password_file) then ("--vault-password-file " +  '"' + vault_password_file + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    ask_become_pass: "ask for privilege escalation password"
    ask_pass: "ask for SSH password"
    ask_su_pass: "ask for su password (deprecated, use become)"
    ask_sudo_pass: "ask for sudo password (deprecated, use become)"
    ask_vault_pass: "ask for vault password"
    become: "run operations with become (nopasswd implied)"
    become_method: "privilege escalation method to use (default=sudo), valid choices: [ sudo | su | pbrun | pfexec | runas ]"
    become_user: "run operations as this user (default=None)"
    check: "don't make any changes; instead, try to predict some of the changes that may occur"
    connection: "connection type to use (default=smart)"
    diff: "when changing (small) files and templates, show the differences in those files; works great with --check"
    extra_vars: "set additional variables as key=value or YAML/JSON"
    flush_cache: "clear the fact cache"
    force_handlers: "run handlers even if a task fails"
    forks: "specify number of parallel processes to use (default=5)"
    inventory_file: "specify inventory host file (default=/etc/ansible/hosts)"
    limit: "further limit selected hosts to an additional pattern"
    list_hosts: "outputs a list of matching hosts; does not execute anything else"
    list_tags: "list all available tags"
    list_tasks: "list all tasks that would be executed"
    module_path: "specify path(s) to module library (default=None)"
    private_key: "use this file to authenticate the connection"
    skip_tags: "only run plays and tasks whose tags do not match these values"
    start_at_task: "start the playbook at the task matching this name"
    step: "one-step-at-a-time: confirm each task before running"
    su: "run operations with su (deprecated, use become)"
    su_user: "run operations with su as this user (default=root) (deprecated, use become)"
    sudo: "run operations with sudo (nopasswd) (deprecated, use become)"
    sudo_user: "desired sudo user (default=root) (deprecated, use become)"
    syntax_check: "perform a syntax check on the playbook, but do not execute it"
    tags: "only run plays and tasks tagged with these values"
    timeout: "override the SSH timeout in seconds (default=10)"
    user: "connect as this user (default=ubuntu)"
    vault_password_file: "vault password file"
    verbose: "verbose mode (-vvv for more, -vvvv to enable connection debugging)"
    playbook_doty_ml: ""
  }
}