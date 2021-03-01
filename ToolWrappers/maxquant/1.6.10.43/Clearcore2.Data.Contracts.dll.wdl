version 1.0

task Clearcore2DataContractsdll {
  command <<<
    Clearcore2_Data_Contracts_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}