version 1.0

task NextflowPull {
  input {
    Boolean? all
    Boolean? hub
    Boolean? revision
    Boolean? user
    String pull
    String project
    String name
    String or
    String repository
    String url
    String to
  }
  command <<<
    nextflow pull \
      ~{pull} \
      ~{project} \
      ~{name} \
      ~{or} \
      ~{repository} \
      ~{url} \
      ~{to} \
      ~{if (all) then "-all" else ""} \
      ~{if (hub) then "-hub" else ""} \
      ~{if (revision) then "-revision" else ""} \
      ~{if (user) then "-user" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all: "Update all downloaded projects\\nDefault: false"
    hub: "Service hub where the project is hosted"
    revision: "Revision of the project to run (either a git branch, tag or commit SHA\\nnumber)"
    user: "Private repository user name\\n"
    pull: ""
    project: ""
    name: ""
    or: ""
    repository: ""
    url: ""
    to: ""
  }
  output {
    File out_stdout = stdout()
  }
}