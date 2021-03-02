version 1.0

task Chain2dim {
  command <<<
    chain2dim
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}