version 1.0

task Findadameggsh {
  command <<<
    find_adam_egg_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}