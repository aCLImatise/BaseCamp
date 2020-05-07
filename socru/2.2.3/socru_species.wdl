version 1.0

task SocruSpecies {
  input {
    Boolean debugDebug
    Boolean verboseVerbose
  }
  command <<<
    socru_species \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}