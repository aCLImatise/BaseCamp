version 1.0

task Cmsearch {
  input {
    Boolean gG
    String zZ
    Boolean devhelpDevhelp
    String oO
    String aA
    String tblTblOut
    Boolean accAcc
    Boolean noNoAli
    Boolean noNoTextW
    String textTextW
    Boolean verboseVerbose
    String eE
    String tT
    String inceInce
    String inInCt
    Boolean cutCutGa
    Boolean cutCutNc
    Boolean cutCutTc
    Boolean maxMax
    Boolean noNoHmm
    Boolean midMid
    Boolean defaultDefault
    Boolean rfRfAm
    Boolean hmmHmmOnly
    String fzFz
    String fmidFmid
    Boolean notNotRunC
    Boolean anyAnyTrunc
    Boolean nonull3Nonull3
    String mxMxSize
    String smxSmxSize
    Boolean cyCyK
    Boolean acyAcyK
    String wcxWcx
    Boolean topTopOnly
    Boolean bottomBottomOnly
    String tTFormat
    String cpuCpu
    String? cmCmFile
    String? seqSeqDb
  }
  command <<<
    cmsearch \
      ~{cmCmFile} \
      ~{true="-g" false="" gG} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{true="--devhelp" false="" devhelpDevhelp} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(tblTblOut) then ("--tblout " +  '"' + tblTblOut + '"') else ""} \
      ~{true="--acc" false="" accAcc} \
      ~{true="--noali" false="" noNoAli} \
      ~{true="--notextw" false="" noNoTextW} \
      ~{if defined(textTextW) then ("--textw " +  '"' + textTextW + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(inceInce) then ("--incE " +  '"' + inceInce + '"') else ""} \
      ~{if defined(inInCt) then ("--incT " +  '"' + inInCt + '"') else ""} \
      ~{true="--cut_ga" false="" cutCutGa} \
      ~{true="--cut_nc" false="" cutCutNc} \
      ~{true="--cut_tc" false="" cutCutTc} \
      ~{true="--max" false="" maxMax} \
      ~{true="--nohmm" false="" noNoHmm} \
      ~{true="--mid" false="" midMid} \
      ~{true="--default" false="" defaultDefault} \
      ~{true="--rfam" false="" rfRfAm} \
      ~{true="--hmmonly" false="" hmmHmmOnly} \
      ~{if defined(fzFz) then ("--FZ " +  '"' + fzFz + '"') else ""} \
      ~{if defined(fmidFmid) then ("--Fmid " +  '"' + fmidFmid + '"') else ""} \
      ~{true="--notrunc" false="" notNotRunC} \
      ~{true="--anytrunc" false="" anyAnyTrunc} \
      ~{true="--nonull3" false="" nonull3Nonull3} \
      ~{if defined(mxMxSize) then ("--mxsize " +  '"' + mxMxSize + '"') else ""} \
      ~{if defined(smxSmxSize) then ("--smxsize " +  '"' + smxSmxSize + '"') else ""} \
      ~{true="--cyk" false="" cyCyK} \
      ~{true="--acyk" false="" acyAcyK} \
      ~{if defined(wcxWcx) then ("--wcx " +  '"' + wcxWcx + '"') else ""} \
      ~{true="--toponly" false="" topTopOnly} \
      ~{true="--bottomonly" false="" bottomBottomOnly} \
      ~{if defined(tTFormat) then ("--tformat " +  '"' + tTFormat + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{seqSeqDb}
  >>>
}