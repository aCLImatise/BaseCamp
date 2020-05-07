version 1.0

task RtgPedsamplesim {
  input {
    File inputInput
    String outputOutput
    Boolean outputOutputSdf
    File pedigreePedigree
    String referenceReference
    Float extraExtraCrossovers
    String geneticGeneticMapDir
    Boolean noNoGzip
    Int numNumMutations
    String ploidyPloidy
    Boolean removeRemoveUnused
    Int seedSeed
  }
  command <<<
    rtg pedsamplesim \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--output-sdf" false="" outputOutputSdf} \
      ~{if defined(pedigreePedigree) then ("--pedigree " +  '"' + pedigreePedigree + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(extraExtraCrossovers) then ("--extra-crossovers " +  '"' + extraExtraCrossovers + '"') else ""} \
      ~{if defined(geneticGeneticMapDir) then ("--genetic-map-dir " +  '"' + geneticGeneticMapDir + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{if defined(numNumMutations) then ("--num-mutations " +  '"' + numNumMutations + '"') else ""} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{true="--remove-unused" false="" removeRemoveUnused} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}