version 1.0

task RunNovoBreaksh {
  command <<<
    run_novoBreak_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}