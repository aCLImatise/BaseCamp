version 1.0

task PlanemoClone {
  input {
    String? branch
    String target
    String project
  }
  command <<<
    planemo clone \
      ~{target} \
      ~{project} \
      ~{if defined(branch) then ("--branch " +  '"' + branch + '"') else ""}
  >>>
  parameter_meta {
    branch: "Create a named branch on result."
    target: ""
    project: ""
  }
  output {
    File out_stdout = stdout()
  }
}