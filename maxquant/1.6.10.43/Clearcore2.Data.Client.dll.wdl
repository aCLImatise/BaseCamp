version 1.0

task Clearcore2DataClientdll {
  command <<<
    Clearcore2_Data_Client_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}