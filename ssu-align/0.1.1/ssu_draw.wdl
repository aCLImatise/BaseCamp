version 1.0

task SsuDraw {
  input {
    Boolean aA
    Boolean fF
    Boolean dD
    String sS
    String kK
    String mM
    String tT
    Boolean iI
    String ps2pdfPs2pdf
    Boolean psPsOnly
    String iIFile
    String keyKeyOut
    Boolean noNoMask
    Boolean maskMaskKey
    Boolean infoInfo
    Boolean mutMutInfo
    Boolean ifreqIfreq
    Boolean iIAvgLen
    Boolean dDAll
    Boolean dintDint
    Boolean probProb
    Boolean spanSpan
    Boolean cntCnt
    Boolean noNoAln
    Boolean indiIndi
    Boolean consCons
    Boolean rfRf
    Boolean noNoPp
    Boolean noNoBp
    Boolean noNoOl
    Boolean noNoLeg
    Boolean noNoHead
    Boolean noNoFoot
  }
  command <<<
    ssu-draw \
      ~{true="-a" false="" aA} \
      ~{true="-f" false="" fF} \
      ~{true="-d" false="" dD} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{if defined(ps2pdfPs2pdf) then ("--ps2pdf " +  '"' + ps2pdfPs2pdf + '"') else ""} \
      ~{true="--ps-only" false="" psPsOnly} \
      ~{if defined(iIFile) then ("--ifile " +  '"' + iIFile + '"') else ""} \
      ~{if defined(keyKeyOut) then ("--key-out " +  '"' + keyKeyOut + '"') else ""} \
      ~{true="--no-mask" false="" noNoMask} \
      ~{true="--mask-key" false="" maskMaskKey} \
      ~{true="--info" false="" infoInfo} \
      ~{true="--mutinfo" false="" mutMutInfo} \
      ~{true="--ifreq" false="" ifreqIfreq} \
      ~{true="--iavglen" false="" iIAvgLen} \
      ~{true="--dall" false="" dDAll} \
      ~{true="--dint" false="" dintDint} \
      ~{true="--prob" false="" probProb} \
      ~{true="--span" false="" spanSpan} \
      ~{true="--cnt" false="" cntCnt} \
      ~{true="--no-aln" false="" noNoAln} \
      ~{true="--indi" false="" indiIndi} \
      ~{true="--cons" false="" consCons} \
      ~{true="--rf" false="" rfRf} \
      ~{true="--no-pp" false="" noNoPp} \
      ~{true="--no-bp" false="" noNoBp} \
      ~{true="--no-ol" false="" noNoOl} \
      ~{true="--no-leg" false="" noNoLeg} \
      ~{true="--no-head" false="" noNoHead} \
      ~{true="--no-foot" false="" noNoFoot}
  >>>
}