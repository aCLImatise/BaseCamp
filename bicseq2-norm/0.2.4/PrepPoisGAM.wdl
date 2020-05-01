version 1.0

task PrepPoisGAM {
  input {
    String iI
    Int sS
    Int lL
    String oO
    String eE
    Int bB
    String chromChrom
    Int udsUds
    Boolean noNoGapInRead
    Boolean gcGcBin
    Boolean mapMapBin
    Boolean noneNoneGbInom
    Boolean noheaderNoheader
    String refineRefine
    String? fFAFile
  }
  command <<<
    PrepPoisGAM \
      ~{fFAFile} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(udsUds) then ("--uds " +  '"' + udsUds + '"') else ""} \
      ~{true="--noGapInRead" false="" noNoGapInRead} \
      ~{true="--gc_bin" false="" gcGcBin} \
      ~{true="--map_bin" false="" mapMapBin} \
      ~{true="--NoNegBinom" false="" noneNoneGbInom} \
      ~{true="--NoHeader" false="" noheaderNoheader} \
      ~{if defined(refineRefine) then ("--refine " +  '"' + refineRefine + '"') else ""}
  >>>
}