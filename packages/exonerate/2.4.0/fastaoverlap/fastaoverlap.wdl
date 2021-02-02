version 1.0

task Fastaoverlap {
  command <<<
    fastaoverlap
  >>>
  output {
    File out_stdout = stdout()
  }
}