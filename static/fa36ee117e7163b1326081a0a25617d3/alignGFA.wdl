version 1.0

task AlignGFA {
  input {
    String tT
    String cC
    String iI
    String oO
    Boolean gfaGfa
    Boolean bedBed
    Boolean vV
    String tT
  }
  command <<<
    alignGFA \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-gfa" false="" gfaGfa} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-V" false="" vV} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}