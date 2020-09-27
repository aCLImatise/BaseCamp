version 1.0

task DeinterleaveFastqsh {
  command <<<
    deinterleave_fastq_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}