version 1.0

task SamT99pm {
  command <<<
    SamT99_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}