version 1.0

task RsemGetUniqueBamOutput {
  input {
    String? numberNumberOfThreads
    String? unsortedUnsortedTranscriptBamInput
    String? bamBamOutput
  }
  command <<<
    rsem-get-unique bam_output \
      ~{numberNumberOfThreads} \
      ~{unsortedUnsortedTranscriptBamInput} \
      ~{bamBamOutput}
  >>>
}