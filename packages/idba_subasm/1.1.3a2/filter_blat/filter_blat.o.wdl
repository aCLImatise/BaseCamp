version 1.0

task FilterBlato {
  command <<<
    filter_blat_o
  >>>
  output {
    File out_stdout = stdout()
  }
}