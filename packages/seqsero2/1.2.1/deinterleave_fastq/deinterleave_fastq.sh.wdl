version 1.0

task DeinterleaveFastqsh {
  command <<<
    deinterleave_fastq_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqsero2:1.2.1--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}