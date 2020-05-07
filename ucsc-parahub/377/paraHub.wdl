version 1.0

task ParaHub {
  input {
    String? machineMachineList
  }
  command <<<
    paraHub \
      ~{machineMachineList}
  >>>
}