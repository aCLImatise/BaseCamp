version 1.0

task DupMasker {
  command <<<
    DupMasker
  >>>
  output {
    File out_stdout = stdout()
  }
}