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
    docker: "None"
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