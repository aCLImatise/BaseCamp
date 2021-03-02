version 1.0

task RunNovoBreaksh {
  command <<<
    run_novoBreak_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}