version 1.0

task AbyssMergepairs {
  input {
    Boolean chastityChastity
    Boolean noNoChastity
    Boolean trimTrimMasked
    Boolean noNoTrimMasked
    String trimTrimQuality
    Boolean standardStandardQuality
    Boolean illuminaIlluminaQuality
    Boolean verboseVerbose
  }
  command <<<
    abyss-mergepairs \
      ~{true="--chastity" false="" chastityChastity} \
      ~{true="--no-chastity" false="" noNoChastity} \
      ~{true="--trim-masked" false="" trimTrimMasked} \
      ~{true="--no-trim-masked" false="" noNoTrimMasked} \
      ~{if defined(trimTrimQuality) then ("--trim-quality " +  '"' + trimTrimQuality + '"') else ""} \
      ~{true="--standard-quality" false="" standardStandardQuality} \
      ~{true="--illumina-quality" false="" illuminaIlluminaQuality} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}