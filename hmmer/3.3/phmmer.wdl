version 1.0

task Phmmer {
  input {
    String oO
    String aA
    String tblTblOut
    String domDomTblOut
    String pfamPfamTblOut
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
  }
  command <<<
    phmmer \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(tblTblOut) then ("--tblout " +  '"' + tblTblOut + '"') else ""} \
      ~{if defined(domDomTblOut) then ("--domtblout " +  '"' + domDomTblOut + '"') else ""} \
      ~{if defined(pfamPfamTblOut) then ("--pfamtblout " +  '"' + pfamPfamTblOut + '"') else ""} \
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
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""}
  >>>
}