version 1.0

task Udocker {
  command <<<
    udocker
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}