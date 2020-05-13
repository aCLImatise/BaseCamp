version 1.0

task RsemGetUniqueNumberOfThreadsBamOutput {
  input {
    String? unsortedUnsortedTranscriptBamInput
    String? bamBamOutput
  }
  command <<<
    rsem-get-unique number_of_threads bam_output \
      ~{unsortedUnsortedTranscriptBamInput} \
      ~{bamBamOutput}
  >>>
}