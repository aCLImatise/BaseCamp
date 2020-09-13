version 1.0

task ArrowGroups {
  command <<<
    arrow groups
  >>>
  output {
    File out_stdout = stdout()
  }
}