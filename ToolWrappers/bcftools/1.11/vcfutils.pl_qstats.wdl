version 1.0

task VcfutilsplQstats {
  input {
    Boolean? more_options
    Boolean? options
    String vcf_utils_do_tpl
  }
  command <<<
    vcfutils_pl qstats \
      ~{vcf_utils_do_tpl} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.11--h7c999a4_0"
  }
  parameter_meta {
    more_options: ""
    options: ""
    vcf_utils_do_tpl: ""
  }
  output {
    File out_stdout = stdout()
  }
}