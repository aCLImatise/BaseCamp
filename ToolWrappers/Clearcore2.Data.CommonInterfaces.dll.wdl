version 1.0

task Clearcore2DataCommonInterfacesdll {
  command <<<
    Clearcore2_Data_CommonInterfaces_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}