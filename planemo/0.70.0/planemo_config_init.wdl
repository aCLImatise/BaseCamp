version 1.0

task PlanemoConfigInit {
  input {
    String project
  }
  command <<<
    planemo config_init \
      ~{project}
  >>>
  parameter_meta {
    project: ""
  }
}