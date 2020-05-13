version 1.0

task Bam2fastqOutput.2.fastq {
  input {
    String? outputOutput1fastq
    String? outputOutput2fastq
  }
  command <<<
    bam2fastq output.2.fastq \
      ~{outputOutput1fastq} \
      ~{outputOutput2fastq}
  >>>
}