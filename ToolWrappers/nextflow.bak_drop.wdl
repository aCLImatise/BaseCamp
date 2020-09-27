version 1.0

task NextflowbakDrop {
  input {
    Boolean? delete_repository_taking
    String drop
    String name
    String of
    String the
    String project
    String to
  }
  command <<<
    nextflow_bak drop \
      ~{drop} \
      ~{name} \
      ~{of} \
      ~{the} \
      ~{project} \
      ~{to} \
      ~{if (delete_repository_taking) then "-f" else ""}
  >>>
  parameter_meta {
    delete_repository_taking: "Delete the repository without taking care of local changes\\nDefault: false"
    drop: ""
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