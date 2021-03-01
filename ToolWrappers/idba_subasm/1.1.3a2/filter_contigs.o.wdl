version 1.0

task FilterContigso {
  command <<<
    filter_contigs_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}