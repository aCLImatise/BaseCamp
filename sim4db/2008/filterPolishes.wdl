version 1.0

task FilterPolishes {
  input {
    Boolean verboseVerbose
    String cC
    String iI
    String lL
    String minMinExons
    String maxMaxExons
    String cC
    String gG
    String oO
    Boolean oO
    String dD
    Boolean dD
    String jJ
    Boolean selfSelfHits
    String segregateSegregate
    Boolean noNoDefLines
    Boolean noNoAlignments
    Boolean gff3Gff3
  }
  command <<<
    filterPolishes \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(minMinExons) then ("-minexons " +  '"' + minMinExons + '"') else ""} \
      ~{if defined(maxMaxExons) then ("-maxexons " +  '"' + maxMaxExons + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-O" false="" oO} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-D" false="" dD} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{true="-selfhits" false="" selfSelfHits} \
      ~{if defined(segregateSegregate) then ("-segregate " +  '"' + segregateSegregate + '"') else ""} \
      ~{true="-nodeflines" false="" noNoDefLines} \
      ~{true="-noalignments" false="" noNoAlignments} \
      ~{true="-gff3" false="" gff3Gff3}
  >>>
}