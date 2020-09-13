version 1.0

task Pybedtools {
  command <<<
    pybedtools
  >>>
  output {
    File out_stdout = stdout()
  }
}