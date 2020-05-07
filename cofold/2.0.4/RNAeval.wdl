version 1.0

task RNAeval {
  input {
    Boolean detailedDetailedHelp
    Boolean verboseVerbose
    Int danglesDangles
    Int energyEnergyModel
    String paramParamFile
    Boolean circCirc
    Boolean logLogMl
    String? programProgram
  }
  command <<<
    RNAeval \
      ~{programProgram} \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{if defined(energyEnergyModel) then ("--energyModel " +  '"' + energyEnergyModel + '"') else ""} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{true="--circ" false="" circCirc} \
      ~{true="--logML" false="" logLogMl}
  >>>
}