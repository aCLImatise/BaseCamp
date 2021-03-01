version 1.0

task BigPslToPsl {
  command <<<
    bigPslToPsl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}