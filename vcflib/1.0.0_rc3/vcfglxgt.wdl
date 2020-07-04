version 1.0

task Vcfglxgt {
  input {
    Boolean? fix_null_genotypes
    String vcf_file
  }
  command <<<
    vcfglxgt \
      ~{vcf_file} \
      ~{true="--fix-null-genotypes" false="" fix_null_genotypes}
  >>>
  parameter_meta {
    fix_null_genotypes: "only apply to null and partly-null genotypes"
    vcf_file: ""
  }
}