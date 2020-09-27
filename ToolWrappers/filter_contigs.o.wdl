version 1.0

task FilterContigso {
  command <<<
    filter_contigs_o
  >>>
  output {
    File out_stdout = stdout()
  }
}