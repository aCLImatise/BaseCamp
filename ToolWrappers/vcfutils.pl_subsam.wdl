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
  parameter_meta {
    in_dot_vcf: ""
    samples: ""
  }
  output {
    File out_stdout = stdout()
  }
}