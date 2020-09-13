version 1.0

task CheckFuncs {
  command <<<
    check_funcs
  >>>
  output {
    File out_stdout = stdout()
  }
}