version 1.0

task SampleReadso {
  command <<<
    sample_reads_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}