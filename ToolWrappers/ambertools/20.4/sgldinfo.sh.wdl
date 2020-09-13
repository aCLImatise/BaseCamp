version 1.0

task Sgldinfosh {
  command <<<
    sgldinfo_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}