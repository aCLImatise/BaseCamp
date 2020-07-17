version 1.0

task ParaHubStop {
  input {
    String now
  }
  command <<<
    paraHubStop \
      ~{now}
  >>>
  parameter_meta {
    now: ""
  }
}