version 1.0

task Hmmscan {
  input {
    String oO
    String tblTblOut
    String domDomTblOut
    String pfamPfamTblOut
    Boolean accAcc
    Boolean noNoAli
    Boolean noNoTextW
    String textTextW
    String eE
    String tT
    String domeDome
    String doDoMt
    String inceInce
    String inInCt
    String incIncDome
    String incIncDoMt
    Boolean cutCutGa
    Boolean cutCutNc
    Boolean cutCutTc
    Boolean maxMax
    String f1F1
    String f2F2
    String f3F3
    Boolean noNoBias
    Boolean nonull2Nonull2
    String zZ
    String doDoMz
    String seedSeed
    String qQFormat
    String cpuCpu
  }
  command <<<
    hmmscan \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tblTblOut) then ("--tblout " +  '"' + tblTblOut + '"') else ""} \
      ~{if defined(domDomTblOut) then ("--domtblout " +  '"' + domDomTblOut + '"') else ""} \
      ~{if defined(pfamPfamTblOut) then ("--pfamtblout " +  '"' + pfamPfamTblOut + '"') else ""} \
      ~{true="--acc" false="" accAcc} \
      ~{true="--noali" false="" noNoAli} \
      ~{true="--notextw" false="" noNoTextW} \
      ~{if defined(textTextW) then ("--textw " +  '"' + textTextW + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(domeDome) then ("--domE " +  '"' + domeDome + '"') else ""} \
      ~{if defined(doDoMt) then ("--domT " +  '"' + doDoMt + '"') else ""} \
      ~{if defined(inceInce) then ("--incE " +  '"' + inceInce + '"') else ""} \
      ~{if defined(inInCt) then ("--incT " +  '"' + inInCt + '"') else ""} \
      ~{if defined(incIncDome) then ("--incdomE " +  '"' + incIncDome + '"') else ""} \
      ~{if defined(incIncDoMt) then ("--incdomT " +  '"' + incIncDoMt + '"') else ""} \
      ~{true="--cut_ga" false="" cutCutGa} \
      ~{true="--cut_nc" false="" cutCutNc} \
      ~{true="--cut_tc" false="" cutCutTc} \
      ~{true="--max" false="" maxMax} \
      ~{if defined(f1F1) then ("--F1 " +  '"' + f1F1 + '"') else ""} \
      ~{if defined(f2F2) then ("--F2 " +  '"' + f2F2 + '"') else ""} \
      ~{if defined(f3F3) then ("--F3 " +  '"' + f3F3 + '"') else ""} \
      ~{true="--nobias" false="" noNoBias} \
      ~{true="--nonull2" false="" nonull2Nonull2} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{if defined(doDoMz) then ("--domZ " +  '"' + doDoMz + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(qQFormat) then ("--qformat " +  '"' + qQFormat + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""}
  >>>
}