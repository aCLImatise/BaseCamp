version 1.0

task Vcfgenotypecompare {
  input {
    String other_genotype_tag
    String vcf_file
  }
  command <<<
    vcfgenotypecompare \
      ~{other_genotype_tag} \
      ~{vcf_file}
  >>>
  parameter_meta {
    other_genotype_tag: ""
    vcf_file: ""
  }
}