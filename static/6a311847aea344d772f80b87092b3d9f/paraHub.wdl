version 1.0

task ParaHub {
  input {
    String machine_list
  }
  command <<<
    paraHub \
      ~{machine_list}
  >>>
  parameter_meta {
    machine_list: ""
  }
}