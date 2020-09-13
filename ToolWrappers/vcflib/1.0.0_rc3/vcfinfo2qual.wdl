version 1.0

task Vcfinfo2qual {
  input {
    String? key
    String? vcf_file
  }
  command <<<
    vcfinfo2qual \
      ~{key} \
      ~{vcf_file}
  >>>
  parameter_meta {
    key: ""
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}