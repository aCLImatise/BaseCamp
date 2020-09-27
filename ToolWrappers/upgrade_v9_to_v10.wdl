version 1.0

task Upgradev9tov10 {
  command <<<
    upgrade_v9_to_v10
  >>>
  output {
    File out_stdout = stdout()
  }
}