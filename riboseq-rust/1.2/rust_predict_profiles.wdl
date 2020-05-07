version 1.0

task RustPredictProfiles.bak {
  input {
    String oO
    Boolean pP
    String? transcriptomeTranscriptome
    String? alignmentAlignment
    String? offsetOffset
    Int? lengthsLengths
    String? rustRustCodonFile
  }
  command <<<
    rust_predict_profiles.bak \
      ~{transcriptomeTranscriptome} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{alignmentAlignment} \
      ~{offsetOffset} \
      ~{lengthsLengths} \
      ~{rustRustCodonFile}
  >>>
}