version 1.0

task Tablet {
  command <<<
    tablet
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}