version 1.0

task FastaToCA {
  command <<<
    fastaToCA
  >>>
  output {
    File out_stdout = stdout()
  }
}