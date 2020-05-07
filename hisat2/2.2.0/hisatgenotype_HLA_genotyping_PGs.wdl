version 1.0

task HisatgenotypeHLAGenotypingPGs.py {
  input {
    String referenceReferenceType
    String hlaHlaList
    String alignerAlignerList
    String genomeGenomeList
    String excludeExcludeAlleleList
    String numNumMismatch
    Boolean verboseVerbose
  }
  command <<<
    hisatgenotype_HLA_genotyping_PGs.py \
      ~{if defined(referenceReferenceType) then ("--reference-type " +  '"' + referenceReferenceType + '"') else ""} \
      ~{if defined(hlaHlaList) then ("--hla-list " +  '"' + hlaHlaList + '"') else ""} \
      ~{if defined(alignerAlignerList) then ("--aligner-list " +  '"' + alignerAlignerList + '"') else ""} \
      ~{if defined(genomeGenomeList) then ("--genome-list " +  '"' + genomeGenomeList + '"') else ""} \
      ~{if defined(excludeExcludeAlleleList) then ("--exclude-allele-list " +  '"' + excludeExcludeAlleleList + '"') else ""} \
      ~{if defined(numNumMismatch) then ("--num-mismatch " +  '"' + numNumMismatch + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}