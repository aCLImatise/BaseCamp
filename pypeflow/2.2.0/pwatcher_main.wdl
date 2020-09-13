version 1.0

task Pwatchermain {
  command <<<
    pwatcher_main
  >>>
  output {
    File out_stdout = stdout()
  }
}