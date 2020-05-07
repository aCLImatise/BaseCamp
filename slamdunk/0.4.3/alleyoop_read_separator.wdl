version 1.0

task AlleyoopReadSeparator {
  input {
    String outputOutputDir
    String snpSnpDirectory
    String vcfVcf
    String referenceReference
    String conversionConversionThreshold
    Int minMinBaseQual
    String threadsThreads
    String? bamBam
  }
  command <<<
    alleyoop read-separator \
      ~{bamBam} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(snpSnpDirectory) then ("--snp-directory " +  '"' + snpSnpDirectory + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(conversionConversionThreshold) then ("--conversion-threshold " +  '"' + conversionConversionThreshold + '"') else ""} \
      ~{if defined(minMinBaseQual) then ("--min-base-qual " +  '"' + minMinBaseQual + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}