version 1.0

task Multiz {
  command <<<
    multiz
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}