version 1.0

task RtgSamplesim {
  input {
    File inputInput
    File outputOutput
    String outputOutputSdf
    String referenceReference
    String sampleSample
    String allowAllowMissingAf
    Boolean noNoGzip
    String ploidyPloidy
    Int seedSeed
    String sexSex
  }
  command <<<
    rtg samplesim \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputSdf) then ("--output-sdf " +  '"' + outputOutputSdf + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(allowAllowMissingAf) then ("--allow-missing-af " +  '"' + allowAllowMissingAf + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(sexSex) then ("--sex " +  '"' + sexSex + '"') else ""}
  >>>
}