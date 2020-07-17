version 1.0

task CalculateHaplotypeStatistics.py {
  input {
    Array[String] vcf_one
    Array[String] vcf_two
    Array[String] haplotype_blocks_one
    Array[String] haplotype_blocks_two
    Boolean? indels
  }
  command <<<
    calculate_haplotype_statistics.py \
      ~{if defined(vcf_one) then ("--vcf1 " +  '"' + vcf_one + '"') else ""} \
      ~{if defined(vcf_two) then ("--vcf2 " +  '"' + vcf_two + '"') else ""} \
      ~{if defined(haplotype_blocks_one) then ("--haplotype_blocks1 " +  '"' + haplotype_blocks_one + '"') else ""} \
      ~{if defined(haplotype_blocks_two) then ("--haplotype_blocks2 " +  '"' + haplotype_blocks_two + '"') else ""} \
      ~{true="--indels" false="" indels}
  >>>
  parameter_meta {
    vcf_one: "A phased, single sample VCF file to compute haplotype statistics on."
    vcf_two: "A phased, single sample VCF file to use as the \"ground truth\" haplotype."
    haplotype_blocks_one: "Override the haplotype information in \"-v1\" with the information in this HapCUT2-format haplotype block file. If this option is used, then the VCF specified with -v1 MUST be the same VCF used with HapCUT2 (--vcf) to produce the haplotype block file!"
    haplotype_blocks_two: "Override the haplotype information in \"-v2\" with the information in this HapCUT2-format haplotype block file. If this option is used, then the VCF specified with -v2 MUST be the same VCF used with HapCUT2 (--vcf) to produce the haplotype block file!"
    indels: "Use this flag to consider indel variants. Default: Indels ignored."
  }
}