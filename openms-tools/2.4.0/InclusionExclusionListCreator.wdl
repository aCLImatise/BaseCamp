version 1.0

task InclusionExclusionListCreator {
  input {
    File includeInclude
    File excludeExclude
    File outOut
    File rtRtModel
    File ptPtModel
    String inclusionInclusionCharges
    String inclusionInclusionStrategy
    String exclusionExclusionCharges
    String rawRawData
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean algorithmAlgorithm
  }
  command <<<
    InclusionExclusionListCreator \
      ~{if defined(includeInclude) then ("-include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(excludeExclude) then ("-exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(rtRtModel) then ("-rt_model " +  '"' + rtRtModel + '"') else ""} \
      ~{if defined(ptPtModel) then ("-pt_model " +  '"' + ptPtModel + '"') else ""} \
      ~{if defined(inclusionInclusionCharges) then ("-inclusion_charges " +  '"' + inclusionInclusionCharges + '"') else ""} \
      ~{if defined(inclusionInclusionStrategy) then ("-inclusion_strategy " +  '"' + inclusionInclusionStrategy + '"') else ""} \
      ~{if defined(exclusionExclusionCharges) then ("-exclusion_charges " +  '"' + exclusionExclusionCharges + '"') else ""} \
      ~{if defined(rawRawData) then ("-raw_data " +  '"' + rawRawData + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- algorithm" false="" algorithmAlgorithm}
  >>>
}