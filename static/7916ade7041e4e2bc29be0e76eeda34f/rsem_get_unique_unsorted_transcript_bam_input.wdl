version 1.0

task RsemGetUniqueUnsortedTranscriptBamInput {
  input {
    String? numberNumberOfThreads
    String? unsortedUnsortedTranscriptBamInput
    String? bamBamOutput
  }
  command <<<
    rsem-get-unique unsorted_transcript_bam_input \
      ~{numberNumberOfThreads} \
      ~{unsortedUnsortedTranscriptBamInput} \
      ~{bamBamOutput}
  >>>
}