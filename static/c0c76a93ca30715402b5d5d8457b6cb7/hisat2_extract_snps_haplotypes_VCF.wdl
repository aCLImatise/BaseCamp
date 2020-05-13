version 1.0

task Hisat2ExtractSnpsHaplotypesVCF.py {
  input {
    String referenceReferenceType
    Int interInterGap
    Int intraIntraGap
    Boolean nonNonRs
    String genotypeGenotypeVcf
    String genotypeGenotypeGeneList
    Boolean extraExtraFiles
    Boolean verboseVerbose
    String? genomeGenomeFile
    String? vcfVcfFNames
    String? baseBaseFname
  }
  command <<<
    hisat2_extract_snps_haplotypes_VCF.py \
      ~{genomeGenomeFile} \
      ~{if defined(referenceReferenceType) then ("--reference-type " +  '"' + referenceReferenceType + '"') else ""} \
      ~{if defined(interInterGap) then ("--inter-gap " +  '"' + interInterGap + '"') else ""} \
      ~{if defined(intraIntraGap) then ("--intra-gap " +  '"' + intraIntraGap + '"') else ""} \
      ~{true="--non-rs" false="" nonNonRs} \
      ~{if defined(genotypeGenotypeVcf) then ("--genotype-vcf " +  '"' + genotypeGenotypeVcf + '"') else ""} \
      ~{if defined(genotypeGenotypeGeneList) then ("--genotype-gene-list " +  '"' + genotypeGenotypeGeneList + '"') else ""} \
      ~{true="--extra-files" false="" extraExtraFiles} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{vcfVcfFNames} \
      ~{baseBaseFname}
  >>>
}