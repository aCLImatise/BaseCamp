version 1.0

task ParaNodeStatus {
  input {
    Boolean? long
    String machine_list
  }
  command <<<
    paraNodeStatus \
      ~{machine_list} \
      ~{true="-long" false="" long}
  >>>
  parameter_meta {
    long: "List details of current and recent jobs."
    machine_list: ""
  }
}