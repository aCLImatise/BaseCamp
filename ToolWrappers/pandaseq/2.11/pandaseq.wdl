version 1.0

task Pandaseq {
  command <<<
    pandaseq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}