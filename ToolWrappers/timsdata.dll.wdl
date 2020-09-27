version 1.0

task Timsdatadll {
  command <<<
    timsdata_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}