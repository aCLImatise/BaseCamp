version 1.0

task OGetReadsFromFastaInputFasta {
  input {
    Boolean compareCompareUpToTheFirstSpace
    String? inputInputFastA
    String? idsIdsFile
    String? outputOutputFastA
  }
  command <<<
    o-get-reads-from-fasta input_fasta \
      ~{inputInputFastA} \
      ~{true="--compare-up-to-the-first-space" false="" compareCompareUpToTheFirstSpace} \
      ~{idsIdsFile} \
      ~{outputOutputFastA}
  >>>
}