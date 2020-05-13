version 1.0

task CalculateHaplotypeStatistics.py {
  input {
    Array[String]+ vcf1Vcf1
    Array[String]+ vcf2Vcf2
    Array[String]+ haplotypeHaplotypeBlocks1
    Array[String]+ haplotypeHaplotypeBlocks2
    Boolean indelsIndels
  }
  command <<<
    calculate_haplotype_statistics.py \
      ~{if defined(vcf1Vcf1) then ("--vcf1 " +  '"' + vcf1Vcf1 + '"') else ""} \
      ~{if defined(vcf2Vcf2) then ("--vcf2 " +  '"' + vcf2Vcf2 + '"') else ""} \
      ~{if defined(haplotypeHaplotypeBlocks1) then ("--haplotype_blocks1 " +  '"' + haplotypeHaplotypeBlocks1 + '"') else ""} \
      ~{if defined(haplotypeHaplotypeBlocks2) then ("--haplotype_blocks2 " +  '"' + haplotypeHaplotypeBlocks2 + '"') else ""} \
      ~{true="--indels" false="" indelsIndels}
  >>>
}