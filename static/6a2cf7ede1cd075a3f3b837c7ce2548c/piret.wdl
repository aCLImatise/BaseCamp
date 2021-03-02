version 1.0

task Piret {
  command <<<
    piret
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}