version 1.0

task Clearcore2DataCommondll {
  command <<<
    Clearcore2_Data_Common_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}