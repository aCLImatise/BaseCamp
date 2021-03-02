version 1.0

task Bootstrap {
  command <<<
    bootstrap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}