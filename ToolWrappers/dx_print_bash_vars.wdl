version 1.0

task Dxprintbashvars {
  command <<<
    dx_print_bash_vars
  >>>
  output {
    File out_stdout = stdout()
  }
}