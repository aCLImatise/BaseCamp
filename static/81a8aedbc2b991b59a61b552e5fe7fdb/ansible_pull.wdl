version 1.0

task AnsiblePull {
  input {
    Boolean? accept_host_key
    Boolean? ask_sudo_pass
    String? checkout
    String? directory
    String? extra_vars
    Boolean? force
    Boolean? git_force
    String? inventory_file
    String? key_file
    String? module_name
    Boolean? only_if_changed
    Boolean? purge
    String? sleep
    String? tags
    Boolean? track_submodules
    String? url
    String? vault_password_file
    Boolean? verbose
    String? playbook_doty_ml
  }
  command <<<
    ansible-pull \
      ~{playbook_doty_ml} \
      ~{true="--accept-host-key" false="" accept_host_key} \
      ~{true="--ask-sudo-pass" false="" ask_sudo_pass} \
      ~{if defined(checkout) then ("--checkout " +  '"' + checkout + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(extra_vars) then ("--extra-vars " +  '"' + extra_vars + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--git-force" false="" git_force} \
      ~{if defined(inventory_file) then ("--inventory-file " +  '"' + inventory_file + '"') else ""} \
      ~{if defined(key_file) then ("--key-file " +  '"' + key_file + '"') else ""} \
      ~{if defined(module_name) then ("--module-name " +  '"' + module_name + '"') else ""} \
      ~{true="--only-if-changed" false="" only_if_changed} \
      ~{true="--purge" false="" purge} \
      ~{if defined(sleep) then ("--sleep " +  '"' + sleep + '"') else ""} \
      ~{if defined(tags) then ("--tags " +  '"' + tags + '"') else ""} \
      ~{true="--track-submodules" false="" track_submodules} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(vault_password_file) then ("--vault-password-file " +  '"' + vault_password_file + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    accept_host_key: "adds the hostkey for the repo url if not already added"
    ask_sudo_pass: "ask for sudo password"
    checkout: "branch/tag/commit to checkout.  Defaults to behavior of repository module."
    directory: "directory to checkout repository to"
    extra_vars: "set additional variables as key=value or YAML/JSON"
    force: "run the playbook even if the repository could not be updated"
    git_force: "modified files in the working git repository will be discarded"
    inventory_file: "location of the inventory host file"
    key_file: "Pass '-i <key_file>' to the SSH arguments used by git."
    module_name: "Module name used to check out repository.  Default is git."
    only_if_changed: "only run the playbook if the repository has been updated"
    purge: "purge checkout after playbook run"
    sleep: "sleep for random interval (between 0 and n number of seconds) before starting. this is a useful way to disperse git requests"
    tags: "only run plays and tasks tagged with these values"
    track_submodules: "submodules will track the latest commit on their master branch (or other branch specified in .gitmodules). This is equivalent to specifying the --remote flag to git submodule update"
    url: "URL of the playbook repository"
    vault_password_file: "vault password file"
    verbose: "Pass -vvvv to ansible-playbook"
    playbook_doty_ml: ""
  }
}