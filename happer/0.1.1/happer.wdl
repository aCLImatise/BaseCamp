version 1.0

task Happer {
  input {
    Boolean vV
    File oO
    String? seqSeqFile
    String? bedBed
  }
  command <<<
    happer \
      ~{seqSeqFile} \
      ~{true="-v" false="" vV} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{bedBed}
  >>>
}