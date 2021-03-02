version 1.0

task PlanemoClone {
  input {
    String? skip_fork
    String target
    String project
  }
  command <<<
    planemo clone \
      ~{target} \
      ~{project} \
      ~{if defined(skip_fork) then ("--skip_fork " +  '"' + skip_fork + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    skip_fork: "Create a named branch on result."
    target: ""
    project: ""
  }
  output {
    File out_stdout = stdout()
  }
}