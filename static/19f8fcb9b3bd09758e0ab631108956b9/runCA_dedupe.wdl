version 1.0

task RunCAdedupe {
  command <<<
    runCA_dedupe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}