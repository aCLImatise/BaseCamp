version 1.0

task Vcfhethomratio {
  input {
    File vcf_file
  }
  command <<<
    vcfhethomratio \
      ~{vcf_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}