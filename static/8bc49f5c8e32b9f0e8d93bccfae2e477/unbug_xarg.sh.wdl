version 1.0

task UnbugXargsh {
  command <<<
    unbug_xarg_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}