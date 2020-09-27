version 1.0

task UpdateInfopy {
  input {
    String vcf
  }
  command <<<
    update_info_py \
      ~{vcf}
  >>>
  parameter_meta {
    vcf: "VCF input (default: stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}