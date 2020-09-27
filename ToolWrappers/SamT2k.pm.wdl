version 1.0

task SamT2kpm {
  command <<<
    SamT2k_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}