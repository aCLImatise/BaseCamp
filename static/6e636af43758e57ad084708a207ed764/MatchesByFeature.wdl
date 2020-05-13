version 1.0

task MatchesByFeature {
  input {
    String? gff3Gff3File
    String? gffGffFeatures
    String? matchMatchFiles
  }
  command <<<
    MatchesByFeature \
      ~{gff3Gff3File} \
      ~{gffGffFeatures} \
      ~{matchMatchFiles}
  >>>
}