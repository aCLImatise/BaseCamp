version 1.0

task Vcfgenotypecompare {
  input {
    String other_genotype_tag
    File vcf_file
  }
  command <<<
    vcfgenotypecompare \
      ~{other_genotype_tag} \
      ~{vcf_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    other_genotype_tag: ""
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}