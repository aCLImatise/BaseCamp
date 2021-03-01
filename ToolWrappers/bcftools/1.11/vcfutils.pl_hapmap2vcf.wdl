version 1.0

task VcfutilsplHapmap2vcf {
  input {
    String vcf_utils_do_tpl
    String in_dot_ucsc_dot_snp
    String in_dot_hapmap
  }
  command <<<
    vcfutils_pl hapmap2vcf \
      ~{vcf_utils_do_tpl} \
      ~{in_dot_ucsc_dot_snp} \
      ~{in_dot_hapmap}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.11--h7c999a4_0"
  }
  parameter_meta {
    vcf_utils_do_tpl: ""
    in_dot_ucsc_dot_snp: ""
    in_dot_hapmap: ""
  }
  output {
    File out_stdout = stdout()
  }
}