version 1.0

task NextflowbakClone {
  input {
    Boolean? hub
    Boolean? revision_clone_it
    Boolean? user
    String clone
    String name
    String of
    String the
    String project
    String to
  }
  command <<<
    nextflow_bak clone \
      ~{clone} \
      ~{name} \
      ~{of} \
      ~{the} \
      ~{project} \
      ~{to} \
      ~{if (hub) then "-hub" else ""} \
      ~{if (revision_clone_it) then "-r" else ""} \
      ~{if (user) then "-user" else ""}
  >>>
  parameter_meta {
    hub: "Service hub where the project is hosted"
    revision_clone_it: "Revision to clone - It can be a git branch, tag or revision number"
    user: "Private repository user name\\n"
    clone: ""
    name: ""
    of: ""
    the: ""
    project: ""
    to: ""
  }
  output {
    File out_stdout = stdout()
  }
}