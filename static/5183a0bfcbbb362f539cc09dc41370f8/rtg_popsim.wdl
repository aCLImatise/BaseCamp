version 1.0

task RtgPopsim {
  input {
    File outputOutput
    String referenceReference
    Boolean noNoGzip
    Int seedSeed
  }
  command <<<
    rtg popsim \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}