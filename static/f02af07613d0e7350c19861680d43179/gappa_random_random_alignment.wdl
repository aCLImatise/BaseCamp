version 1.0

task GappaRandomRandomAlignment {
  input {
    String sequenceSequenceCount
    String sequenceSequenceLength
    String charactersCharacters
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa random random-alignment \
      ~{optionsOptions} \
      ~{if defined(sequenceSequenceCount) then ("--sequence-count " +  '"' + sequenceSequenceCount + '"') else ""} \
      ~{if defined(sequenceSequenceLength) then ("--sequence-length " +  '"' + sequenceSequenceLength + '"') else ""} \
      ~{if defined(charactersCharacters) then ("--characters " +  '"' + charactersCharacters + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}