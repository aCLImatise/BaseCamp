version 1.0

task SampleReadso {
  command <<<
    sample_reads_o
  >>>
  output {
    File out_stdout = stdout()
  }
}