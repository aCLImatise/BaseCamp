version 1.0

task ParaNodeStop {
  input {
    String? machineMachineList
  }
  command <<<
    paraNodeStop \
      ~{machineMachineList}
  >>>
}