version 1.0

task Seqmap {
  input {
    String? numberNumberOfMismatches
    String? probeProbeFastAFilename
    String? transcriptTranscriptFastAFilename
    String? outputOutputFileName
  }
  command <<<
    seqmap \
      ~{numberNumberOfMismatches} \
      ~{probeProbeFastAFilename} \
      ~{transcriptTranscriptFastAFilename} \
      ~{outputOutputFileName}
  >>>
}