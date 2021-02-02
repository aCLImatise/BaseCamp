version 1.0

task SerobaSummary {
  command <<<
    seroba summary
  >>>
  output {
    File out_stdout = stdout()
  }
}