version 1.0

task Byobuenable {
  command <<<
    byobu_enable
  >>>
  output {
    File out_stdout = stdout()
  }
}