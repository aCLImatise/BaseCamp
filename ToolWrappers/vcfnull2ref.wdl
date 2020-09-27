version 1.0

task Vcfnull2ref {
  input {
    File vcf_file
  }
  command <<<
    vcfnull2ref \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}