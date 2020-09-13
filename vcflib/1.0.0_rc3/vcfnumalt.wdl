version 1.0

task Vcfnumalt {
  input {
    File vcf_file
  }
  command <<<
    vcfnumalt \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}