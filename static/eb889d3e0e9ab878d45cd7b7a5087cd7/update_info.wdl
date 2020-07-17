version 1.0

task UpdateInfo.py {
  input {
    String vcf
  }
  command <<<
    update_info.py \
      ~{vcf}
  >>>
  parameter_meta {
    vcf: "VCF input (default: stdin)"
  }
}