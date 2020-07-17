version 1.0

task ParaNodeStop {
  input {
    String machine_list
  }
  command <<<
    paraNodeStop \
      ~{machine_list}
  >>>
  parameter_meta {
    machine_list: ""
  }
}