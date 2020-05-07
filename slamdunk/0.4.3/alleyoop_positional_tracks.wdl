version 1.0

task AlleyoopPositionalTracks {
  input {
    String outputOutputDir
    String snpSnpDirectory
    String vcfVcf
    String referenceReference
    String conversionConversionThreshold
    String coverageCoverageCutOff
    Int minMinBaseQual
    String threadsThreads
    String? bamBam
  }
  command <<<
    alleyoop positional-tracks \
      ~{bamBam} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(snpSnpDirectory) then ("--snp-directory " +  '"' + snpSnpDirectory + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(conversionConversionThreshold) then ("--conversion-threshold " +  '"' + conversionConversionThreshold + '"') else ""} \
      ~{if defined(coverageCoverageCutOff) then ("--coverage-cutoff " +  '"' + coverageCoverageCutOff + '"') else ""} \
      ~{if defined(minMinBaseQual) then ("--min-base-qual " +  '"' + minMinBaseQual + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}