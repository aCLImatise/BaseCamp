version 1.0

task RunConcurrentlypl {
  command <<<
    runConcurrently_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}