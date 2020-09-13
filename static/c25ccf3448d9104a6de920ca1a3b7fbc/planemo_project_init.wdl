version 1.0

task PlanemoProjectInit {
  input {
    String? template
    String project
  }
  command <<<
    planemo project_init \
      ~{project} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""}
  >>>
  parameter_meta {
    template: ""
    project: ""
  }
  output {
    File out_stdout = stdout()
  }
}