version 1.0

task Bam2fastq {
  input {
    Boolean outputOutput
    Boolean cC
    Boolean uU
    Boolean splitSplitBarcodes
    Boolean seqSeqIdPrefix
    String? inputInput
  }
  command <<<
    bam2fastq \
      ~{inputInput} \
      ~{true="--output" false="" outputOutput} \
      ~{true="-c" false="" cC} \
      ~{true="-u" false="" uU} \
      ~{true="--split-barcodes" false="" splitSplitBarcodes} \
      ~{true="--seqid-prefix" false="" seqSeqIdPrefix}
  >>>
}