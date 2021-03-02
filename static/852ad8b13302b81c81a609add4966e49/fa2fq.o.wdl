version 1.0

task Fa2fqo {
  command <<<
    fa2fq_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}