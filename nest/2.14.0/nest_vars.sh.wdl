version 1.0

task NestVarssh {
  command <<<
    nest_vars_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}