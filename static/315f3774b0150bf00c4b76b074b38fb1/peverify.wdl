version 1.0

task Peverify {
  command <<<
    peverify
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}