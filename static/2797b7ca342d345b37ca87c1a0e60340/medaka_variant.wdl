version 1.0

task MedakaVariant {
  input {
    Boolean debugDebug
    Boolean quietQuiet
    Array[String]+ regionsRegions
    Boolean verboseVerbose
    String? refRefFastA
    String? inputsInputs
    String? outputOutput
  }
  command <<<
    medaka variant \
      ~{refRefFastA} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{inputsInputs} \
      ~{outputOutput}
  >>>
}