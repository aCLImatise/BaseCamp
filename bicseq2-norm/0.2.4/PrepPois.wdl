version 1.0

task PrepPois {
  input {
    String iI
    String gG
    Int sS
    Int lL
    String oO
    String eE
    Int bB
    Int pP
    String chromChrom
    Int udsUds
    Boolean noNoGapInRead
    Boolean gcGcBin
    Boolean mapMapBin
    Boolean gcGcLog
    Float gcGcMp
    Boolean noneNoneGbInom
    Boolean noheaderNoheader
    Boolean refineRefine
    String? fFAFile
  }
  command <<<
    PrepPois \
      ~{fFAFile} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(udsUds) then ("--uds " +  '"' + udsUds + '"') else ""} \
      ~{true="--noGapInRead" false="" noNoGapInRead} \
      ~{true="--gc_bin" false="" gcGcBin} \
      ~{true="--map_bin" false="" mapMapBin} \
      ~{true="--gc_log" false="" gcGcLog} \
      ~{if defined(gcGcMp) then ("--gc_mp " +  '"' + gcGcMp + '"') else ""} \
      ~{true="--NoNegBinom" false="" noneNoneGbInom} \
      ~{true="--NoHeader" false="" noheaderNoheader} \
      ~{true="--refine" false="" refineRefine}
  >>>
}