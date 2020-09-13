version 1.0

task Ansiblepull {
  input {
    Boolean? accept_host_key
    Boolean? ask_sudo_pass
    String? checkout
    Directory? directory
    String? extra_vars
    Boolean? force
    File? inventory_file
    File? key_file
    String? module_name
    Boolean? only_if_changed
    Boolean? purge
    Int? sleep
    String? tags
    Boolean? track_submodules
    String? url
    File? vault_password_file
    Boolean? verbose
    String updated
    String discarded
  }
  command <<<
    ansible_pull \
      ~{updated} \
      ~{discarded} \
      ~{if (accept_host_key) then "--accept-host-key" else ""} \
      ~{if (ask_sudo_pass) then "--ask-sudo-pass" else ""} \
      ~{if defined(checkout) then ("--checkout " +  '"' + checkout + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(extra_vars) then ("--extra-vars " +  '"' + extra_vars + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(inventory_file) then ("--inventory-file " +  '"' + inventory_file + '"') else ""} \
      ~{if defined(key_file) then ("--key-file " +  '"' + key_file + '"') else ""} \
      ~{if defined(module_name) then ("--module-name " +  '"' + module_name + '"') else ""} \
      ~{if (only_if_changed) then "--only-if-changed" else ""} \
      ~{if (purge) then "--purge" else ""} \
      ~{if defined(sleep) then ("--sleep " +  '"' + sleep + '"') else ""} \
      ~{if defined(tags) then ("--tags " +  '"' + tags + '"') else ""} \
      ~{if (track_submodules) then "--track-submodules" else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(vault_password_file) then ("--vault-password-file " +  '"' + vault_password_file + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    accept_host_key: "adds the hostkey for the repo url if not already added"
    ask_sudo_pass: "ask for sudo password"
    checkout: "branch/tag/commit to checkout.  Defaults to behavior\\nof repository module."
    directory: "directory to checkout repository to"
    extra_vars: "set additional variables as key=value or YAML/JSON"
    force: "run the playbook even if the repository could not be"
    inventory_file: "location of the inventory host file"
    key_file: "Pass '-i <key_file>' to the SSH arguments used by git."
    module_name: "Module name used to check out repository.  Default is\\ngit."
    only_if_changed: "only run the playbook if the repository has been\\nupdated"
    purge: "purge checkout after playbook run"
    sleep: "sleep for random interval (between 0 and n number of\\nseconds) before starting. this is a useful way to\\ndisperse git requests"
    tags: "only run plays and tasks tagged with these values"
    track_submodules: "submodules will track the latest commit on their\\nmaster branch (or other branch specified in\\n.gitmodules). This is equivalent to specifying the\\n--remote flag to git submodule update"
    url: "URL of the playbook repository"
    vault_password_file: "vault password file"
    verbose: "Pass -vvvv to ansible-playbook"
    updated: "--git-force           modified files in the working git repository will be"
    discarded: "-h, --help            show this help message and exit"
  }
  output {
    File out_stdout = stdout()
  }
}