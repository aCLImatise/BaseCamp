version 1.0

task SlamdunkCount {
  input {
    String outputOutputDir
    String snpSnpDirectory
    String vcfVcf
    String referenceReference
    String bedBed
    String conversionConversionThreshold
    Int maxMaxReadLength
    Int minMinBaseQual
    String threadsThreads
    String? bamBam
  }
  command <<<
    slamdunk count \
      ~{bamBam} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(snpSnpDirectory) then ("--snp-directory " +  '"' + snpSnpDirectory + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(conversionConversionThreshold) then ("--conversion-threshold " +  '"' + conversionConversionThreshold + '"') else ""} \
      ~{if defined(maxMaxReadLength) then ("--max-read-length " +  '"' + maxMaxReadLength + '"') else ""} \
      ~{if defined(minMinBaseQual) then ("--min-base-qual " +  '"' + minMinBaseQual + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}