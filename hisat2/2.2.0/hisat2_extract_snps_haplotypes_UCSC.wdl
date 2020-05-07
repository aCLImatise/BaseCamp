version 1.0

task Hisat2ExtractSnpsHaplotypesUCSC.py {
  input {
    Int interInterGap
    Int intraIntraGap
    Boolean verboseVerbose
    Boolean testTestSet
    String? genomeGenomeFile
    String? snpSnpFname
    String? baseBaseFname
  }
  command <<<
    hisat2_extract_snps_haplotypes_UCSC.py \
      ~{genomeGenomeFile} \
      ~{if defined(interInterGap) then ("--inter-gap " +  '"' + interInterGap + '"') else ""} \
      ~{if defined(intraIntraGap) then ("--intra-gap " +  '"' + intraIntraGap + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--testset" false="" testTestSet} \
      ~{snpSnpFname} \
      ~{baseBaseFname}
  >>>
}