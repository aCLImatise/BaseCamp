version 1.0

task Determinephred {
  command <<<
    determine_phred
  >>>
  output {
    File out_stdout = stdout()
  }
}