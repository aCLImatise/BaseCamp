version 1.0

task Nhmmscan {
  input {
    String oO
    String tblTblOut
    String dfDfAmTblOut
    String aliAliScoresOut
    Boolean accAcc
    Boolean noNoAli
    Boolean noNoTextW
    String textTextW
    String eE
    String tT
    String inceInce
    String inInCt
    Boolean cutCutGa
    Boolean cutCutNc
    Boolean cutCutTc
    Boolean maxMax
    String f1F1
    String f2F2
    String f3F3
    Boolean noNoBias
    String qQFormat
    Boolean nonull2Nonull2
    String zZ
    String seedSeed
    String wWBeta
    String wWLength
    Boolean watsonWatson
    Boolean crickCrick
    String cpuCpu
  }
  command <<<
    nhmmscan \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tblTblOut) then ("--tblout " +  '"' + tblTblOut + '"') else ""} \
      ~{if defined(dfDfAmTblOut) then ("--dfamtblout " +  '"' + dfDfAmTblOut + '"') else ""} \
      ~{if defined(aliAliScoresOut) then ("--aliscoresout " +  '"' + aliAliScoresOut + '"') else ""} \
      ~{true="--acc" false="" accAcc} \
      ~{true="--noali" false="" noNoAli} \
      ~{true="--notextw" false="" noNoTextW} \
      ~{if defined(textTextW) then ("--textw " +  '"' + textTextW + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(inceInce) then ("--incE " +  '"' + inceInce + '"') else ""} \
      ~{if defined(inInCt) then ("--incT " +  '"' + inInCt + '"') else ""} \
      ~{true="--cut_ga" false="" cutCutGa} \
      ~{true="--cut_nc" false="" cutCutNc} \
      ~{true="--cut_tc" false="" cutCutTc} \
      ~{true="--max" false="" maxMax} \
      ~{if defined(f1F1) then ("--F1 " +  '"' + f1F1 + '"') else ""} \
      ~{if defined(f2F2) then ("--F2 " +  '"' + f2F2 + '"') else ""} \
      ~{if defined(f3F3) then ("--F3 " +  '"' + f3F3 + '"') else ""} \
      ~{true="--nobias" false="" noNoBias} \
      ~{if defined(qQFormat) then ("--qformat " +  '"' + qQFormat + '"') else ""} \
      ~{true="--nonull2" false="" nonull2Nonull2} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(wWBeta) then ("--w_beta " +  '"' + wWBeta + '"') else ""} \
      ~{if defined(wWLength) then ("--w_length " +  '"' + wWLength + '"') else ""} \
      ~{true="--watson" false="" watsonWatson} \
      ~{true="--crick" false="" crickCrick} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""}
  >>>
}