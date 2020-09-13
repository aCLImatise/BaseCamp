version 1.0

task SamToDelta {
  command <<<
    samToDelta
  >>>
  output {
    File out_stdout = stdout()
  }
}