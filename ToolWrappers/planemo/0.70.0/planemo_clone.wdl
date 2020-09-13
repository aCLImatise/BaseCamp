version 1.0

task PlanemoClone {
  input {
    Boolean? fork
    String? branch
    String target
    String project
  }
  command <<<
    planemo clone \
      ~{target} \
      ~{project} \
      ~{if (fork) then "--fork" else ""} \
      ~{if defined(branch) then ("--branch " +  '"' + branch + '"') else ""}
  >>>
  parameter_meta {
    fork: "/ --skip_fork"
    branch: "Create a named branch on result."
    target: ""
    project: ""
  }
  output {
    File out_stdout = stdout()
  }
}