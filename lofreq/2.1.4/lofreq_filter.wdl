version 1.0

task LofreqFilter {
  input {
    Boolean sbSbNoCompound
    Boolean sbSbInclIndels
    Boolean onlyOnlyIndels
    Boolean onlyOnlySnVs
    Boolean printPrintAll
    Boolean noNoDefaults
    Boolean verboseVerbose
    Boolean debugDebug
  }
  command <<<
    lofreq filter \
      ~{true="--sb-no-compound" false="" sbSbNoCompound} \
      ~{true="--sb-incl-indels" false="" sbSbInclIndels} \
      ~{true="--only-indels" false="" onlyOnlyIndels} \
      ~{true="--only-snvs" false="" onlyOnlySnVs} \
      ~{true="--print-all" false="" printPrintAll} \
      ~{true="--no-defaults" false="" noNoDefaults} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug}
  >>>
}