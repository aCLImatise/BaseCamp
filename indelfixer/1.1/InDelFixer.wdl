version 1.0

task InDelFixer {
  input {
    File oO
    File iI
    File irIr
    File gG
    Int rR
    Int kK
    Int vV
    Int cutCut
    Int refineRefine
    Int mccMcc
    Boolean rmRmDel
    Boolean sensitiveSensitive
    Boolean fixFix
    Boolean noNoHashing
    String realignRealign
    Int lL
    Int laLa
    String insIns
    String delDel
    String subSub
    Int maxMaxDel
    Int qQ
    Boolean gopGop
    Boolean gexGex
    Boolean illuminaIllumina
    Boolean pacPacBio
    String? pacPacBio
    String? illuminaIllumina
  }
  command <<<
    InDelFixer \
      ~{pacPacBio} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(irIr) then ("-ir " +  '"' + irIr + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(cutCut) then ("-cut " +  '"' + cutCut + '"') else ""} \
      ~{if defined(refineRefine) then ("-refine " +  '"' + refineRefine + '"') else ""} \
      ~{if defined(mccMcc) then ("-mcc " +  '"' + mccMcc + '"') else ""} \
      ~{true="-rmDel" false="" rmRmDel} \
      ~{true="-sensitive" false="" sensitiveSensitive} \
      ~{true="-fix" false="" fixFix} \
      ~{true="-noHashing" false="" noNoHashing} \
      ~{if defined(realignRealign) then ("-realign " +  '"' + realignRealign + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(laLa) then ("-la " +  '"' + laLa + '"') else ""} \
      ~{if defined(insIns) then ("-ins " +  '"' + insIns + '"') else ""} \
      ~{if defined(delDel) then ("-del " +  '"' + delDel + '"') else ""} \
      ~{if defined(subSub) then ("-sub " +  '"' + subSub + '"') else ""} \
      ~{if defined(maxMaxDel) then ("-maxDel " +  '"' + maxMaxDel + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{true="-gop" false="" gopGop} \
      ~{true="-gex" false="" gexGex} \
      ~{true="-illumina" false="" illuminaIllumina} \
      ~{true="-pacbio" false="" pacPacBio} \
      ~{illuminaIllumina}
  >>>
}