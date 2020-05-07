version 1.0

task ParseSdrfConvertOpenms {
  input {
    String sdSdRf
    String rawRaw
    Boolean legacyLegacy
    Boolean oneOneTable
    Boolean verboseVerbose
    String? optionsOptions
  }
  command <<<
    parse_sdrf convert-openms \
      ~{optionsOptions} \
      ~{if defined(sdSdRf) then ("--sdrf " +  '"' + sdSdRf + '"') else ""} \
      ~{if defined(rawRaw) then ("--raw " +  '"' + rawRaw + '"') else ""} \
      ~{true="--legacy" false="" legacyLegacy} \
      ~{true="--onetable" false="" oneOneTable} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}