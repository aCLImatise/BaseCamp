version 1.0

task UtilsWfdll {
  command <<<
    UtilsWf_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}