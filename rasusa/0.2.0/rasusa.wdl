version 1.0

task Rasusa {
  input {
    Boolean vV
    String coverageCoverage
    String genomeGenomeSize
    String inputInput
    String outputOutput
    String seedSeed
  }
  command <<<
    rasusa \
      ~{true="-v" false="" vV} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(genomeGenomeSize) then ("--genome-size " +  '"' + genomeGenomeSize + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}