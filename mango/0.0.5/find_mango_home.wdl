version 1.0

task Findmangohome {
  command <<<
    find_mango_home
  >>>
  output {
    File out_stdout = stdout()
  }
}