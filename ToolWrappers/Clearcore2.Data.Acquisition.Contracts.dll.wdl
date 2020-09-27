version 1.0

task Clearcore2DataAcquisitionContractsdll {
  command <<<
    Clearcore2_Data_Acquisition_Contracts_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}