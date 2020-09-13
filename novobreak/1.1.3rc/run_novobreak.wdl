version 1.0

task RunNovobreak {
  command <<<
    run_novobreak
  >>>
  output {
    File out_stdout = stdout()
  }
}