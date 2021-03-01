version 1.0

task 0xBam2fastq {
  command <<<
    _0x_bam2fastq
  >>>
  runtime {
    docker: "quay.io/biocontainers/ptools_bin:0.0.5--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}