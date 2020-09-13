version 1.0

task SplicedAlignmentpm {
  command <<<
    SplicedAlignment_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}