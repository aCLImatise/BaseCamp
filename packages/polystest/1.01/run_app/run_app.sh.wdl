version 1.0

task RunAppsh {
  command <<<
    run_app_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}