version 1.0

task Mergeqcpl {
  command <<<
    mergeqc_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}