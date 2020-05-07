version 1.0

task ParaNodeStatus {
  input {
    Boolean longLong
    String? machineMachineList
  }
  command <<<
    paraNodeStatus \
      ~{machineMachineList} \
      ~{true="-long" false="" longLong}
  >>>
}