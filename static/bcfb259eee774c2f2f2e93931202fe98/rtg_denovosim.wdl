version 1.0

task RtgDenovosim {
  input {
    File inputInput
    String originalOriginal
    File outputOutput
    String outputOutputSdf
    String referenceReference
    String sampleSample
    Boolean noNoGzip
    Int numNumMutations
    String ploidyPloidy
    Int seedSeed
    Boolean showShowMutations
  }
  command <<<
    rtg denovosim \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(originalOriginal) then ("--original " +  '"' + originalOriginal + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputSdf) then ("--output-sdf " +  '"' + outputOutputSdf + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{if defined(numNumMutations) then ("--num-mutations " +  '"' + numNumMutations + '"') else ""} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--show-mutations" false="" showShowMutations}
  >>>
}