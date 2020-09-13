version 1.0

task Bam2fastq {
  command <<<
    bam2fastq
  >>>
  output {
    File out_stdout = stdout()
  }
}