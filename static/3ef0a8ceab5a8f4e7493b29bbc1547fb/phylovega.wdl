version 1.0

task Phylovega {
  command <<<
    phylovega
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}