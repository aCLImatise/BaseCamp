version 1.0

task Upgradev8tov9 {
  command <<<
    upgrade_v8_to_v9
  >>>
  output {
    File out_stdout = stdout()
  }
}