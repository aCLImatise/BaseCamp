version 1.0

task Missingreads {
  command <<<
    missing_reads
  >>>
  output {
    File out_stdout = stdout()
  }
}