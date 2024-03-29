version 1.0

task Vcfcommonsamples {
  input {
    File vcf_file
  }
  command <<<
    vcfcommonsamples \
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