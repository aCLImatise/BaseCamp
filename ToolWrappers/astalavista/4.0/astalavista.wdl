version 1.0

task Astalavista {
  command <<<
    astalavista
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}