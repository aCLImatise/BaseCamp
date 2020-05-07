version 1.0

task SomaticseqParallel.py {
  input {
    String outputOutputDirectory
    String genomeGenomeReference
    String truthTruthSnv
    String truthTruthInDel
    String classifierClassifierSnv
    String classifierClassifierInDel
    String passPassThreshold
    String lowLowQualThreshold
    String algorithmAlgorithm
    String homozygousHomozygousThreshold
    String heterozygousHeterozygousThreshold
    Int minimumMinimumMappingQuality
    Int minimumMinimumBaseQuality
    Int minimumMinimumNumCallers
    String dbsnpDbsnpVcf
    String cosmicCosmicVcf
    String inclusionInclusionRegion
    String exclusionExclusionRegion
    String threadsThreads
    Boolean keepKeepIntermediates
    Boolean somaticSomaticSeqTrain
  }
  command <<<
    somaticseq_parallel.py \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(genomeGenomeReference) then ("--genome-reference " +  '"' + genomeGenomeReference + '"') else ""} \
      ~{if defined(truthTruthSnv) then ("--truth-snv " +  '"' + truthTruthSnv + '"') else ""} \
      ~{if defined(truthTruthInDel) then ("--truth-indel " +  '"' + truthTruthInDel + '"') else ""} \
      ~{if defined(classifierClassifierSnv) then ("--classifier-snv " +  '"' + classifierClassifierSnv + '"') else ""} \
      ~{if defined(classifierClassifierInDel) then ("--classifier-indel " +  '"' + classifierClassifierInDel + '"') else ""} \
      ~{if defined(passPassThreshold) then ("--pass-threshold " +  '"' + passPassThreshold + '"') else ""} \
      ~{if defined(lowLowQualThreshold) then ("--lowqual-threshold " +  '"' + lowLowQualThreshold + '"') else ""} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(homozygousHomozygousThreshold) then ("--homozygous-threshold " +  '"' + homozygousHomozygousThreshold + '"') else ""} \
      ~{if defined(heterozygousHeterozygousThreshold) then ("--heterozygous-threshold " +  '"' + heterozygousHeterozygousThreshold + '"') else ""} \
      ~{if defined(minimumMinimumMappingQuality) then ("--minimum-mapping-quality " +  '"' + minimumMinimumMappingQuality + '"') else ""} \
      ~{if defined(minimumMinimumBaseQuality) then ("--minimum-base-quality " +  '"' + minimumMinimumBaseQuality + '"') else ""} \
      ~{if defined(minimumMinimumNumCallers) then ("--minimum-num-callers " +  '"' + minimumMinimumNumCallers + '"') else ""} \
      ~{if defined(dbsnpDbsnpVcf) then ("--dbsnp-vcf " +  '"' + dbsnpDbsnpVcf + '"') else ""} \
      ~{if defined(cosmicCosmicVcf) then ("--cosmic-vcf " +  '"' + cosmicCosmicVcf + '"') else ""} \
      ~{if defined(inclusionInclusionRegion) then ("--inclusion-region " +  '"' + inclusionInclusionRegion + '"') else ""} \
      ~{if defined(exclusionExclusionRegion) then ("--exclusion-region " +  '"' + exclusionExclusionRegion + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--keep-intermediates" false="" keepKeepIntermediates} \
      ~{true="--somaticseq-train" false="" somaticSomaticSeqTrain}
  >>>
}