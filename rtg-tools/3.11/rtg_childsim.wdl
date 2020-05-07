version 1.0

task RtgChildsim {
  input {
    String fatherFather
    File inputInput
    String motherMother
    File outputOutput
    String outputOutputSdf
    String referenceReference
    String sampleSample
    Float extraExtraCrossovers
    String geneticGeneticMapDir
    Boolean noNoGzip
    String ploidyPloidy
    Int seedSeed
    String sexSex
    Boolean showShowCrossovers
  }
  command <<<
    rtg childsim \
      ~{if defined(fatherFather) then ("--father " +  '"' + fatherFather + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(motherMother) then ("--mother " +  '"' + motherMother + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputSdf) then ("--output-sdf " +  '"' + outputOutputSdf + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(extraExtraCrossovers) then ("--extra-crossovers " +  '"' + extraExtraCrossovers + '"') else ""} \
      ~{if defined(geneticGeneticMapDir) then ("--genetic-map-dir " +  '"' + geneticGeneticMapDir + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(sexSex) then ("--sex " +  '"' + sexSex + '"') else ""} \
      ~{true="--show-crossovers" false="" showShowCrossovers}
  >>>
}