version 1.0

task VcfutilsplSubsam {
  input {
    String in_dot_vcf
    String? samples
  }
  command <<<
    vcfutils_pl subsam \
      ~{in_dot_vcf} \
      ~{samples}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.12--h3f113a9_0"
  }
  parameter_meta {
    in_dot_vcf: ""
    samples: ""
  }
  output {
    File out_stdout = stdout()
  }
}