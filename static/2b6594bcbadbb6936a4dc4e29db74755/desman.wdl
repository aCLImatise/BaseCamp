version 1.0

task Desman {
  input {
    String genomesGenomes
    Boolean fF
    Boolean rR
    String etaEtaFile
    String assignAssignFile
    String outputOutputDir
    String optimiseOptimiseP
    Boolean iI
    Int minMinCoverage
    Int maxMaxQValue
    String randomRandomSeed
    Boolean vV
    String? variantVariantFile
  }
  command <<<
    desman \
      ~{variantVariantFile} \
      ~{if defined(genomesGenomes) then ("--genomes " +  '"' + genomesGenomes + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{if defined(etaEtaFile) then ("--eta_file " +  '"' + etaEtaFile + '"') else ""} \
      ~{if defined(assignAssignFile) then ("--assign_file " +  '"' + assignAssignFile + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(optimiseOptimiseP) then ("--optimiseP " +  '"' + optimiseOptimiseP + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{if defined(minMinCoverage) then ("--min_coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(maxMaxQValue) then ("--max_qvalue " +  '"' + maxMaxQValue + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random_seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}