version 1.0

task Vcfrandomsample {
  input {
    String rateRate
    String scaleScaleBy
    String randomRandomSeed
    Boolean pseudorandomPseudorandomSeed
    String? vcfVcfFile
  }
  command <<<
    vcfrandomsample \
      ~{vcfVcfFile} \
      ~{if defined(rateRate) then ("--rate " +  '"' + rateRate + '"') else ""} \
      ~{if defined(scaleScaleBy) then ("--scale-by " +  '"' + scaleScaleBy + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{true="--pseudorandom-seed" false="" pseudorandomPseudorandomSeed}
  >>>
}