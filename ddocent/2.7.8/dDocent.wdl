version 1.0

task DDocent {
  command <<<
    dDocent
  >>>
  output {
    File out_stdout = stdout()
  }
}