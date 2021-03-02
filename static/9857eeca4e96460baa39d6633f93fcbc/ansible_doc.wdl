version 1.0

task Ansibledoc {
  input {
    File? module_path
    Boolean? list
    Boolean? snippet
    Boolean? show_version_number
    String? module_dot_dot_dot
  }
  command <<<
    ansible_doc \
      ~{module_dot_dot_dot} \
      ~{if defined(module_path) then ("--module-path " +  '"' + module_path + '"') else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (snippet) then "--snippet" else ""} \
      ~{if (show_version_number) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    module_path: "Ansible modules/ directory"
    list: "List available modules"
    snippet: "Show playbook snippet for specified module(s)"
    show_version_number: "Show version number and exit"
    module_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}