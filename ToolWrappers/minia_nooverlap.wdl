version 1.0

task MiniaNooverlap {
  command <<<
    minia_nooverlap
  >>>
  output {
    File out_stdout = stdout()
  }
}