version 1.0

task RunRbdockpl {
  command <<<
    run_rbdock_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}