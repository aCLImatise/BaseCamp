version 1.0

task Dumbbench {
  input {
    String absAbsPrecision
    Boolean verboseVerbose
    String initialInitial
    String maxiterMaxiter
    String dryDryRun
    Boolean noNoDryRun
    Boolean rawRaw
    Boolean floatFloat
    Boolean stdStd
    Boolean codeCode
    Boolean packagePackage
    Boolean tT
    Boolean pinPinFrequency
  }
  command <<<
    dumbbench \
      ~{if defined(absAbsPrecision) then ("--absprecision " +  '"' + absAbsPrecision + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(initialInitial) then ("--initial " +  '"' + initialInitial + '"') else ""} \
      ~{if defined(maxiterMaxiter) then ("--maxiter " +  '"' + maxiterMaxiter + '"') else ""} \
      ~{if defined(dryDryRun) then ("--dry-run " +  '"' + dryDryRun + '"') else ""} \
      ~{true="--no-dry-run" false="" noNoDryRun} \
      ~{true="--raw" false="" rawRaw} \
      ~{true="--float" false="" floatFloat} \
      ~{true="--std" false="" stdStd} \
      ~{true="--code" false="" codeCode} \
      ~{true="--package" false="" packagePackage} \
      ~{true="--t" false="" tT} \
      ~{true="--pin-frequency" false="" pinPinFrequency}
  >>>
}