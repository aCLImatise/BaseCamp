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
    template: "--help           Show this message and exit.\\n"
    project: ""
  }
  output {
    File out_stdout = stdout()
  }
}