version 1.0

task Bamseqchksum {
  command <<<
    bamseqchksum
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}