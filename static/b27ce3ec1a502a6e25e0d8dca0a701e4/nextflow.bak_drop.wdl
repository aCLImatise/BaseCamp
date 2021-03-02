version 1.0

task NextflowbakDrop {
  input {
    Boolean? delete_repository_false
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
      ~{if (delete_repository_false) then "-f" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nextflow:20.10.0--hecda079_0"
  }
  parameter_meta {
    delete_repository_false: "Delete the repository without taking care of local changes\\nDefault: false"
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