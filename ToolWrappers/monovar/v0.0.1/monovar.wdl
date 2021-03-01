version 1.0

task Monovar {
  command <<<
    monovar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}