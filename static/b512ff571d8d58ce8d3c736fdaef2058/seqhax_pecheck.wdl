version 1.0

task SeqhaxPecheck {
  input {
    File oO
    Boolean iI
    Boolean qQ
    String tT
  }
  command <<<
    seqhax pecheck \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-q" false="" qQ} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}