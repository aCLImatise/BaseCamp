version 1.0

task DeinterleaveFastqsh {
  command <<<
    deinterleave_fastq_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}