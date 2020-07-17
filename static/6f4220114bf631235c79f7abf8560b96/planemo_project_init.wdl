version 1.0

task PlanemoProjectInit {
  input {
    String project
  }
  command <<<
    planemo project_init \
      ~{project}
  >>>
  parameter_meta {
    project: ""
  }
}