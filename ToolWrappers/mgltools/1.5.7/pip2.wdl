version 1.0

task Pip2 {
  command <<<
    pip2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}