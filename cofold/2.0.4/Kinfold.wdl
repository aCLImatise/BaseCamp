version 1.0

task Kinfold {
  input {
    Boolean fullFullHelp
    Int dangleDangle
    Float tempTemp
    File parPar
    Boolean logLogMl
    Boolean noNoShift
    Boolean noNoLp
    String seedSeed
    Float timeTime
    Int numNum
    Boolean startStart
    Boolean stopStop
    Boolean metMet
    Boolean fptFpt
    Float growGrow
    Int glenGlen
    File logLog
    Boolean silentSilent
    Boolean verboseVerbose
    Boolean lmLmIn
    Float cutCut
  }
  command <<<
    Kinfold \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{if defined(dangleDangle) then ("--dangle " +  '"' + dangleDangle + '"') else ""} \
      ~{if defined(tempTemp) then ("--Temp " +  '"' + tempTemp + '"') else ""} \
      ~{if defined(parPar) then ("--Par " +  '"' + parPar + '"') else ""} \
      ~{true="--logML" false="" logLogMl} \
      ~{true="--noShift" false="" noNoShift} \
      ~{true="--noLP" false="" noNoLp} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(timeTime) then ("--time " +  '"' + timeTime + '"') else ""} \
      ~{if defined(numNum) then ("--num " +  '"' + numNum + '"') else ""} \
      ~{true="--start" false="" startStart} \
      ~{true="--stop" false="" stopStop} \
      ~{true="--met" false="" metMet} \
      ~{true="--fpt" false="" fptFpt} \
      ~{if defined(growGrow) then ("--grow " +  '"' + growGrow + '"') else ""} \
      ~{if defined(glenGlen) then ("--glen " +  '"' + glenGlen + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--lmin" false="" lmLmIn} \
      ~{if defined(cutCut) then ("--cut " +  '"' + cutCut + '"') else ""}
  >>>
}