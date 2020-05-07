version 1.0

task SsuEslSsdraw {
  input {
    Boolean dD
    String maskMask
    Boolean smallSmall
    Boolean consCons
    Boolean infoInfo
    Boolean mutMutInfo
    Boolean ifreqIfreq
    Boolean iIAvgLen
    Boolean dDAll
    Boolean probProb
    Boolean spanSpan
    Boolean rfRf
    Boolean dintDint
    String tabTabFile
    Boolean indiIndi
    Boolean fF
    Boolean noNoLeg
    Boolean noNoHead
    Boolean noNoFoot
    Boolean maskMaskCol
    String maskMaskDiff
    Boolean noNoPp
    Boolean noNoBp
    Boolean noNoOl
    Boolean noNoNtPp
    Boolean noNoCnt
    String cCThresh
    Boolean camCamBig
    String aAThresh
    Boolean maskMaskU
    Boolean maskMaskX
    Boolean maskMaskA
    String dDFile
    String eEFile
    String iIFile
  }
  command <<<
    ssu-esl-ssdraw \
      ~{true="-d" false="" dD} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{true="--small" false="" smallSmall} \
      ~{true="--cons" false="" consCons} \
      ~{true="--info" false="" infoInfo} \
      ~{true="--mutinfo" false="" mutMutInfo} \
      ~{true="--ifreq" false="" ifreqIfreq} \
      ~{true="--iavglen" false="" iIAvgLen} \
      ~{true="--dall" false="" dDAll} \
      ~{true="--prob" false="" probProb} \
      ~{true="--span" false="" spanSpan} \
      ~{true="--rf" false="" rfRf} \
      ~{true="--dint" false="" dintDint} \
      ~{if defined(tabTabFile) then ("--tabfile " +  '"' + tabTabFile + '"') else ""} \
      ~{true="--indi" false="" indiIndi} \
      ~{true="-f" false="" fF} \
      ~{true="--no-leg" false="" noNoLeg} \
      ~{true="--no-head" false="" noNoHead} \
      ~{true="--no-foot" false="" noNoFoot} \
      ~{true="--mask-col" false="" maskMaskCol} \
      ~{if defined(maskMaskDiff) then ("--mask-diff " +  '"' + maskMaskDiff + '"') else ""} \
      ~{true="--no-pp" false="" noNoPp} \
      ~{true="--no-bp" false="" noNoBp} \
      ~{true="--no-ol" false="" noNoOl} \
      ~{true="--no-ntpp" false="" noNoNtPp} \
      ~{true="--no-cnt" false="" noNoCnt} \
      ~{if defined(cCThresh) then ("--cthresh " +  '"' + cCThresh + '"') else ""} \
      ~{true="--cambig" false="" camCamBig} \
      ~{if defined(aAThresh) then ("--athresh " +  '"' + aAThresh + '"') else ""} \
      ~{true="--mask-u" false="" maskMaskU} \
      ~{true="--mask-x" false="" maskMaskX} \
      ~{true="--mask-a" false="" maskMaskA} \
      ~{if defined(dDFile) then ("--dfile " +  '"' + dDFile + '"') else ""} \
      ~{if defined(eEFile) then ("--efile " +  '"' + eEFile + '"') else ""} \
      ~{if defined(iIFile) then ("--ifile " +  '"' + iIFile + '"') else ""}
  >>>
}