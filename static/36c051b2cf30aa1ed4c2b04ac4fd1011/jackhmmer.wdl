version 1.0

task Jackhmmer {
  input {
    String nN
    String oO
    String aA
    String tblTblOut
    String domDomTblOut
    String chkChkHmm
    String chChKali
    Boolean accAcc
    Boolean noNoAli
    Boolean noNoTextW
    String textTextW
    String popenPopen
    String pPExtend
    String mxMx
    String mxMxFile
    String eE
    String tT
    String domeDome
    String doDoMt
    String inceInce
    String inInCt
    String incIncDome
    String incIncDoMt
    Boolean maxMax
    String f1F1
    String f2F2
    String f3F3
    Boolean noNoBias
    String fragFragThresh
    Boolean wpbWpb
    Boolean wgsWgsC
    Boolean wWBlosum
    Boolean wWNone
    String widWid
    Boolean eEEnt
    Boolean eEEntExp
    Boolean ecEcLust
    Boolean enEnOne
    String eESet
    String ereEre
    String eESigma
    String eidEid
    Boolean pPNone
    Boolean plaPlaPlace
    String emlEml
    String emnEmn
    String evlEvl
    String evnEvn
    String eflEfl
    String efnEfn
    String eftEft
    Boolean nonull2Nonull2
    String zZ
    String doDoMz
    String seedSeed
    String qQFormat
    String tTFormat
    String cpuCpu
    String? seqSeqFile
    String? seqSeqDb
  }
  command <<<
    jackhmmer \
      ~{seqSeqFile} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(tblTblOut) then ("--tblout " +  '"' + tblTblOut + '"') else ""} \
      ~{if defined(domDomTblOut) then ("--domtblout " +  '"' + domDomTblOut + '"') else ""} \
      ~{if defined(chkChkHmm) then ("--chkhmm " +  '"' + chkChkHmm + '"') else ""} \
      ~{if defined(chChKali) then ("--chkali " +  '"' + chChKali + '"') else ""} \
      ~{true="--acc" false="" accAcc} \
      ~{true="--noali" false="" noNoAli} \
      ~{true="--notextw" false="" noNoTextW} \
      ~{if defined(textTextW) then ("--textw " +  '"' + textTextW + '"') else ""} \
      ~{if defined(popenPopen) then ("--popen " +  '"' + popenPopen + '"') else ""} \
      ~{if defined(pPExtend) then ("--pextend " +  '"' + pPExtend + '"') else ""} \
      ~{if defined(mxMx) then ("--mx " +  '"' + mxMx + '"') else ""} \
      ~{if defined(mxMxFile) then ("--mxfile " +  '"' + mxMxFile + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(domeDome) then ("--domE " +  '"' + domeDome + '"') else ""} \
      ~{if defined(doDoMt) then ("--domT " +  '"' + doDoMt + '"') else ""} \
      ~{if defined(inceInce) then ("--incE " +  '"' + inceInce + '"') else ""} \
      ~{if defined(inInCt) then ("--incT " +  '"' + inInCt + '"') else ""} \
      ~{if defined(incIncDome) then ("--incdomE " +  '"' + incIncDome + '"') else ""} \
      ~{if defined(incIncDoMt) then ("--incdomT " +  '"' + incIncDoMt + '"') else ""} \
      ~{true="--max" false="" maxMax} \
      ~{if defined(f1F1) then ("--F1 " +  '"' + f1F1 + '"') else ""} \
      ~{if defined(f2F2) then ("--F2 " +  '"' + f2F2 + '"') else ""} \
      ~{if defined(f3F3) then ("--F3 " +  '"' + f3F3 + '"') else ""} \
      ~{true="--nobias" false="" noNoBias} \
      ~{if defined(fragFragThresh) then ("--fragthresh " +  '"' + fragFragThresh + '"') else ""} \
      ~{true="--wpb" false="" wpbWpb} \
      ~{true="--wgsc" false="" wgsWgsC} \
      ~{true="--wblosum" false="" wWBlosum} \
      ~{true="--wnone" false="" wWNone} \
      ~{if defined(widWid) then ("--wid " +  '"' + widWid + '"') else ""} \
      ~{true="--eent" false="" eEEnt} \
      ~{true="--eentexp" false="" eEEntExp} \
      ~{true="--eclust" false="" ecEcLust} \
      ~{true="--enone" false="" enEnOne} \
      ~{if defined(eESet) then ("--eset " +  '"' + eESet + '"') else ""} \
      ~{if defined(ereEre) then ("--ere " +  '"' + ereEre + '"') else ""} \
      ~{if defined(eESigma) then ("--esigma " +  '"' + eESigma + '"') else ""} \
      ~{if defined(eidEid) then ("--eid " +  '"' + eidEid + '"') else ""} \
      ~{true="--pnone" false="" pPNone} \
      ~{true="--plaplace" false="" plaPlaPlace} \
      ~{if defined(emlEml) then ("--EmL " +  '"' + emlEml + '"') else ""} \
      ~{if defined(emnEmn) then ("--EmN " +  '"' + emnEmn + '"') else ""} \
      ~{if defined(evlEvl) then ("--EvL " +  '"' + evlEvl + '"') else ""} \
      ~{if defined(evnEvn) then ("--EvN " +  '"' + evnEvn + '"') else ""} \
      ~{if defined(eflEfl) then ("--EfL " +  '"' + eflEfl + '"') else ""} \
      ~{if defined(efnEfn) then ("--EfN " +  '"' + efnEfn + '"') else ""} \
      ~{if defined(eftEft) then ("--Eft " +  '"' + eftEft + '"') else ""} \
      ~{true="--nonull2" false="" nonull2Nonull2} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{if defined(doDoMz) then ("--domZ " +  '"' + doDoMz + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(qQFormat) then ("--qformat " +  '"' + qQFormat + '"') else ""} \
      ~{if defined(tTFormat) then ("--tformat " +  '"' + tTFormat + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{seqSeqDb}
  >>>
}