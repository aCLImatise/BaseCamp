version 1.0

task RibotishQuality {
  input {
    String bB
    String gG
    String oO
    Boolean tisTis
    String iI
    String geneGeneFormat
    String chrChrMap
    String fF
    String rR
    String lL
    String dD
    String binsBins
    Boolean nom0Nom0
    String thTh
    Int maxMaxNh
    Int minMinMapq
    Boolean secondarySecondary
    Boolean pairedPaired
    Boolean colorblindColorblind
    String colorsColors
    String pP
    Boolean verboseVerbose
  }
  command <<<
    ribotish quality \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--tis" false="" tisTis} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(geneGeneFormat) then ("--geneformat " +  '"' + geneGeneFormat + '"') else ""} \
      ~{if defined(chrChrMap) then ("--chrmap " +  '"' + chrChrMap + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(binsBins) then ("--bins " +  '"' + binsBins + '"') else ""} \
      ~{true="--nom0" false="" nom0Nom0} \
      ~{if defined(thTh) then ("--th " +  '"' + thTh + '"') else ""} \
      ~{if defined(maxMaxNh) then ("--maxNH " +  '"' + maxMaxNh + '"') else ""} \
      ~{if defined(minMinMapq) then ("--minMapQ " +  '"' + minMinMapq + '"') else ""} \
      ~{true="--secondary" false="" secondarySecondary} \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--colorblind" false="" colorblindColorblind} \
      ~{if defined(colorsColors) then ("--colors " +  '"' + colorsColors + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}