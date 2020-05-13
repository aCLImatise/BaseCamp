version 1.0

task AlleyoopTcperutrpos {
  input {
    String referenceReference
    String bedBed
    String snpSnpDirectory
    String vcfVcf
    Int maxMaxReadLength
    String outputOutputDir
    String minMinBaseQuality
    String threadsThreads
    String? bamBam
  }
  command <<<
    alleyoop tcperutrpos \
      ~{bamBam} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(snpSnpDirectory) then ("--snp-directory " +  '"' + snpSnpDirectory + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(maxMaxReadLength) then ("--max-read-length " +  '"' + maxMaxReadLength + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(minMinBaseQuality) then ("--min-basequality " +  '"' + minMinBaseQuality + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}