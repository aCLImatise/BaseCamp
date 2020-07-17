version 1.0

task VcfGroupMultiline.py {
  input {
    String vcf
  }
  command <<<
    vcf_group_multiline.py \
      ~{vcf}
  >>>
  parameter_meta {
    vcf: "VCF input (default: stdin)"
  }
}