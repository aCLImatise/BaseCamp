version 1.0

task RunNovobreak {
  command <<<
    run_novobreak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}