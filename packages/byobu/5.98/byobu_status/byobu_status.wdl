version 1.0

task Byobustatus {
  command <<<
    byobu_status
  >>>
  output {
    File out_stdout = stdout()
  }
}