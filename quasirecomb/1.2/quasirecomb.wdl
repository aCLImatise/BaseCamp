version 1.0

task Quasirecomb {
  input {
    String iI
    File oO
    Int kK
    Int mM
    Int tT
    Int rR
    Boolean noNoRecomb
    Boolean qualityQuality
    Boolean printPrintAlignment
    Boolean sampleSampleProteins
    Boolean coverageCoverage
    Boolean refineRefine
    Boolean nogapsNogaps
    Boolean conservativeConservative
    Int maxMaxDel
    String maxMaxPercDel
    Boolean unpairedUnpaired
    Boolean xxXx
    Boolean xmx10gXmx10g
    Boolean xxXx
    Boolean xxXx
  }
  command <<<
    quasirecomb \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-noRecomb" false="" noNoRecomb} \
      ~{true="-quality" false="" qualityQuality} \
      ~{true="-printAlignment" false="" printPrintAlignment} \
      ~{true="-sampleProteins" false="" sampleSampleProteins} \
      ~{true="-coverage" false="" coverageCoverage} \
      ~{true="-refine" false="" refineRefine} \
      ~{true="-noGaps" false="" nogapsNogaps} \
      ~{true="-conservative" false="" conservativeConservative} \
      ~{if defined(maxMaxDel) then ("-maxDel " +  '"' + maxMaxDel + '"') else ""} \
      ~{if defined(maxMaxPercDel) then ("-maxPercDel " +  '"' + maxMaxPercDel + '"') else ""} \
      ~{true="-unpaired" false="" unpairedUnpaired} \
      ~{true="-XX" false="" xxXx} \
      ~{true="-Xmx10G" false="" xmx10gXmx10g} \
      ~{true="-XX" false="" xxXx} \
      ~{true="-XX" false="" xxXx}
  >>>
}