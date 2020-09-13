version 1.0

task DataframeSumAllValuesr {
  command <<<
    dataframeSumAllValues_r
  >>>
  output {
    File out_stdout = stdout()
  }
}