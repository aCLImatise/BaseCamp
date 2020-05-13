version 1.0

task RsemGetUniqueNumberOfThreadsUnsortedTranscriptBamInput {
  input {
    String? bamBamOutput
  }
  command <<<
    rsem-get-unique number_of_threads unsorted_transcript_bam_input \
      ~{bamBamOutput}
  >>>
}