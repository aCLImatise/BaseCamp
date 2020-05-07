version 1.0

task SlamdunkSnp {
  input {
    String outputOutputDir
    String referenceReference
    String minMinCoverage
    String varVarFraction
    String threadsThreads
    String? bamBam
  }
  command <<<
    slamdunk snp \
      ~{bamBam} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min-coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(varVarFraction) then ("--var-fraction " +  '"' + varVarFraction + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}