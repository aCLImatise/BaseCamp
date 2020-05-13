version 1.0

task SequenzaUtilsSeqzBinning {
  input {
    String seqSeqZ
    String windowWindow
    String oO
    String tabTabIx
  }
  command <<<
    sequenza-utils seqz_binning \
      ~{if defined(seqSeqZ) then ("--seqz " +  '"' + seqSeqZ + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tabTabIx) then ("--tabix " +  '"' + tabTabIx + '"') else ""}
  >>>
}