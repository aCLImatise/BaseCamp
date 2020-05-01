version 1.0

task RNAPKplex {
  input {
    Boolean detailedDetailedHelp
    Float cutCutOff
    String tempTemp
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    Boolean noconvNoconv
    String nspNsp
    String energyEnergyCutOff
    String paramParamFile
    Boolean verboseVerbose
    String subSubOpts
  }
  command <<<
    RNAPKplex \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(tempTemp) then ("--temp " +  '"' + tempTemp + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{if defined(nspNsp) then ("--nsp " +  '"' + nspNsp + '"') else ""} \
      ~{if defined(energyEnergyCutOff) then ("--energyCutoff " +  '"' + energyEnergyCutOff + '"') else ""} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(subSubOpts) then ("--subopts " +  '"' + subSubOpts + '"') else ""}
  >>>
}