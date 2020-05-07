version 1.0

task PanGenomeCoreAlignment {
  input {
    String oO
    Float cdCd
    String mM
    String sS
    Boolean pP
    Boolean zZ
    Boolean vV
  }
  command <<<
    pan_genome_core_alignment \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(cdCd) then ("-cd " +  '"' + cdCd + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-z" false="" zZ} \
      ~{true="-v" false="" vV}
  >>>
}