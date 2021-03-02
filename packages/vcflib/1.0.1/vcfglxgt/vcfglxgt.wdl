version 1.0

task Vcfglxgt {
  input {
    Boolean? fix_null_genotypes
    File vcf_file
  }
  command <<<
    vcfglxgt \
      ~{vcf_file} \
      ~{if (fix_null_genotypes) then "--fix-null-genotypes" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    fix_null_genotypes: "only apply to null and partly-null genotypes"
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}