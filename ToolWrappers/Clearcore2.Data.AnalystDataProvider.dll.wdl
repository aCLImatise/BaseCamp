version 1.0

task Clearcore2DataAnalystDataProviderdll {
  command <<<
    Clearcore2_Data_AnalystDataProvider_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}