version 1.0

task CsbHhsearch {
  input {
    String binaryBinary
    String cpuCpu
    String databaseDatabase
    String? queryQuery
  }
  command <<<
    csb-hhsearch \
      ~{queryQuery} \
      ~{if defined(binaryBinary) then ("--binary " +  '"' + binaryBinary + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""}
  >>>
}