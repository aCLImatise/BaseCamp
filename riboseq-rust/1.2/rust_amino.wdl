version 1.0

task RustAmino.bak {
  input {
    String oO
    String? transcriptomeTranscriptome
    String? alignmentAlignment
    String? offsetOffset
    Int? lengthsLengths
  }
  command <<<
    rust_amino.bak \
      ~{transcriptomeTranscriptome} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{alignmentAlignment} \
      ~{offsetOffset} \
      ~{lengthsLengths}
  >>>
}