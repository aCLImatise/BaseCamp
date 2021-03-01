version 1.0

task FastaToCA {
  command <<<
    fastaToCA
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}