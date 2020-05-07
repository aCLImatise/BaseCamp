version 1.0

task VcfFixPloidy {
  input {
    String assumedAssumedSex
    Boolean fixFixLikelihoods
    File ploidyPloidy
    File samplesSamples
  }
  command <<<
    vcf-fix-ploidy \
      ~{if defined(assumedAssumedSex) then ("--assumed-sex " +  '"' + assumedAssumedSex + '"') else ""} \
      ~{true="--fix-likelihoods" false="" fixFixLikelihoods} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""}
  >>>
}