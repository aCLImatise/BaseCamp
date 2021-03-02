version 1.0

task Gddiag {
  command <<<
    gddiag
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}