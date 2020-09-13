version 1.0

task Winconfigbat {
  command <<<
    winconfig_bat
  >>>
  output {
    File out_stdout = stdout()
  }
}