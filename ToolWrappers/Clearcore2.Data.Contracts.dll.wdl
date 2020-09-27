version 1.0

task Clearcore2DataContractsdll {
  command <<<
    Clearcore2_Data_Contracts_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}