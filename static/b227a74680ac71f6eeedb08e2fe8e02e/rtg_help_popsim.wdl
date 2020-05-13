version 1.0

task RtgHelpPopsim {
  input {
    File outputOutput
    String referenceReference
    Boolean noNoGzip
    Int seedSeed
  }
  command <<<
    rtg help popsim \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}