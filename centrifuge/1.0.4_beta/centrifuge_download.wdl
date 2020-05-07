version 1.0

task CentrifugeDownload {
  input {
    String useUse
    String contaminantsContaminants
    String taxonomyTaxonomy
    Directory oO
    Boolean pP
    String dD
    String aA
    String cC
    String tT
    String gG
    Boolean rR
    Boolean uU
    Boolean mM
    Boolean lL
    Boolean gG
    Boolean vV
  }
  command <<<
    centrifuge-download \
      ~{if defined(useUse) then ("- use " +  '"' + useUse + '"') else ""} \
      ~{if defined(contaminantsContaminants) then ("- contaminants " +  '"' + contaminantsContaminants + '"') else ""} \
      ~{if defined(taxonomyTaxonomy) then ("- taxonomy " +  '"' + taxonomyTaxonomy + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-P" false="" pP} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-u" false="" uU} \
      ~{true="-m" false="" mM} \
      ~{true="-l" false="" lL} \
      ~{true="-g" false="" gG} \
      ~{true="-v" false="" vV}
  >>>
}