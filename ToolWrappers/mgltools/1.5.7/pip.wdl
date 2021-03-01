version 1.0

task Pip {
  command <<<
    pip
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}