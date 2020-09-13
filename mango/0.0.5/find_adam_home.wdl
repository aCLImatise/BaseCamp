version 1.0

task Findadamhome {
  command <<<
    find_adam_home
  >>>
  output {
    File out_stdout = stdout()
  }
}