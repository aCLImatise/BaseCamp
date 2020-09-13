version 1.0

task Byobulaunch {
  command <<<
    byobu_launch
  >>>
  output {
    File out_stdout = stdout()
  }
}