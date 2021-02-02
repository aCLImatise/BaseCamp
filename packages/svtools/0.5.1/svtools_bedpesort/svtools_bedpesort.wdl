version 1.0

task SvtoolsBedpesort {
  command <<<
    svtools bedpesort
  >>>
  output {
    File out_stdout = stdout()
  }
}