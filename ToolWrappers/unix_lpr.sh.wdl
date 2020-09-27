version 1.0

task Unixlprsh {
  command <<<
    unix_lpr_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}