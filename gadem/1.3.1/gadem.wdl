version 1.0

task Gadem {
  input {
    Boolean posPosWt
    Boolean widthWidthWt
    Boolean evEv
    Boolean pvPv
    Boolean minnMinn
    Boolean fpwm0Fpwm0
    Boolean bBFile
    Boolean genGen
    Boolean popPop
    Boolean fullFullScan
    Boolean maskMaskR
    Boolean emEm
    Boolean femFem
    Boolean extExtTrim
    Boolean nNMotifs
    Boolean maxw3Maxw3
    Boolean maxw4Maxw4
    Boolean maxw5Maxw5
    Boolean minMinGap
    Boolean maxMaxGap
    Boolean useUseScore
    Boolean fFPwm
    Boolean fFOut
    Boolean nbsNbs
    Boolean verboseVerbose
    String? optionalOptional
    String? argumentsArguments
  }
  command <<<
    gadem \
      ~{optionalOptional} \
      ~{true="-posWt" false="" posPosWt} \
      ~{true="-widthWt" false="" widthWidthWt} \
      ~{true="-ev" false="" evEv} \
      ~{true="-pv" false="" pvPv} \
      ~{true="-minN" false="" minnMinn} \
      ~{true="-fpwm0" false="" fpwm0Fpwm0} \
      ~{true="-bfile" false="" bBFile} \
      ~{true="-gen" false="" genGen} \
      ~{true="-pop" false="" popPop} \
      ~{true="-fullScan" false="" fullFullScan} \
      ~{true="-maskR" false="" maskMaskR} \
      ~{true="-em" false="" emEm} \
      ~{true="-fEM" false="" femFem} \
      ~{true="-extTrim" false="" extExtTrim} \
      ~{true="-nmotifs" false="" nNMotifs} \
      ~{true="-maxw3" false="" maxw3Maxw3} \
      ~{true="-maxw4" false="" maxw4Maxw4} \
      ~{true="-maxw5" false="" maxw5Maxw5} \
      ~{true="-mingap" false="" minMinGap} \
      ~{true="-maxgap" false="" maxMaxGap} \
      ~{true="-useScore" false="" useUseScore} \
      ~{true="-fpwm" false="" fFPwm} \
      ~{true="-fout" false="" fFOut} \
      ~{true="-nbs" false="" nbsNbs} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{argumentsArguments}
  >>>
}