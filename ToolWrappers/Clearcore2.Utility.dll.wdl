version 1.0

task Clearcore2Utilitydll {
  command <<<
    Clearcore2_Utility_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}