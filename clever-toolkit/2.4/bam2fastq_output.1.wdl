version 1.0

task Bam2fastqOutput.1.fastq {
  input {
    String? outputOutput2fastq
  }
  command <<<
    bam2fastq output.1.fastq \
      ~{outputOutput2fastq}
  >>>
}