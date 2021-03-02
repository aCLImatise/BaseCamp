version 1.0

task Hlso {
  command <<<
    hlso
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}