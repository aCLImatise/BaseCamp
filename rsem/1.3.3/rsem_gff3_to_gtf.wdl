version 1.0

task RsemGff3ToGtf {
  input {
    Boolean makeMakeGenesAsTranscripts
    String rnaRnaPatterns
    String extractExtractSequences
    String? inputInputGff3File
    String? outputOutputGtfFile
  }
  command <<<
    rsem-gff3-to-gtf \
      ~{inputInputGff3File} \
      ~{true="--make-genes-as-transcripts" false="" makeMakeGenesAsTranscripts} \
      ~{if defined(rnaRnaPatterns) then ("--RNA-patterns " +  '"' + rnaRnaPatterns + '"') else ""} \
      ~{if defined(extractExtractSequences) then ("--extract-sequences " +  '"' + extractExtractSequences + '"') else ""} \
      ~{outputOutputGtfFile}
  >>>
}