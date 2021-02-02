version 1.0

task Byobuscreen {
  command <<<
    byobu_screen
  >>>
  output {
    File out_stdout = stdout()
  }
}