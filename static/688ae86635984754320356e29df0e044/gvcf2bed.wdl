version 1.0

task Gvcf2bed {
  input {
    String inputInput
    String outputOutput
    String sampleSample
    String qualityQuality
    String nonNonVariantQuality
    Boolean bedBedGraph
  }
  command <<<
    gvcf2bed \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(qualityQuality) then ("--quality " +  '"' + qualityQuality + '"') else ""} \
      ~{if defined(nonNonVariantQuality) then ("--non-variant-quality " +  '"' + nonNonVariantQuality + '"') else ""} \
      ~{true="--bedgraph" false="" bedBedGraph}
  >>>
}