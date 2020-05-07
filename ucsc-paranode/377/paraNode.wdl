version 1.0

task ParaNode {
  input {
    String cpuCpu
    String? startStart
  }
  command <<<
    paraNode \
      ~{startStart} \
      ~{if defined(cpuCpu) then ("-cpu " +  '"' + cpuCpu + '"') else ""}
  >>>
}