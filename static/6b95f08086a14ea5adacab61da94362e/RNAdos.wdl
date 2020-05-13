version 1.0

task RNAdos {
  input {
    Boolean detailedDetailedHelp
    Boolean verboseVerbose
    String sequenceSequence
    Int maxMaxEnergy
    Int numNumThreads
    String tempTemp
    Int danglesDangles
    String paramParamFile
    Int hashtableHashtableBits
    String? optionsOptions
  }
  command <<<
    RNAdos \
      ~{optionsOptions} \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(sequenceSequence) then ("--sequence " +  '"' + sequenceSequence + '"') else ""} \
      ~{if defined(maxMaxEnergy) then ("--max-energy " +  '"' + maxMaxEnergy + '"') else ""} \
      ~{if defined(numNumThreads) then ("--numThreads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(tempTemp) then ("--temp " +  '"' + tempTemp + '"') else ""} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{if defined(hashtableHashtableBits) then ("--hashtable-bits " +  '"' + hashtableHashtableBits + '"') else ""}
  >>>
}