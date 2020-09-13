version 1.0

task VcfGroupMultilinepy {
  input {
    String vcf
  }
  command <<<
    vcf_group_multiline_py \
      ~{vcf}
  >>>
  parameter_meta {
    vcf: "VCF input (default: stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}