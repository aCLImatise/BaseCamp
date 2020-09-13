version 1.0

task Vcfqual2info {
  input {
    String? key
    String? vcf_file
  }
  command <<<
    vcfqual2info \
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