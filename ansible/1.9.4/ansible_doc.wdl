version 1.0

task AnsibleDoc {
  input {
    String? module_path
    Boolean? list
    Boolean? snippet
    Boolean? show_version_number
    String? module_dot_dot_dot
  }
  command <<<
    ansible-doc \
      ~{module_dot_dot_dot} \
      ~{if defined(module_path) then ("--module-path " +  '"' + module_path + '"') else ""} \
      ~{true="--list" false="" list} \
      ~{true="--snippet" false="" snippet} \
      ~{true="-v" false="" show_version_number}
  >>>
  parameter_meta {
    module_path: "Ansible modules/ directory"
    list: "List available modules"
    snippet: "Show playbook snippet for specified module(s)"
    show_version_number: "Show version number and exit"
    module_dot_dot_dot: ""
  }
}