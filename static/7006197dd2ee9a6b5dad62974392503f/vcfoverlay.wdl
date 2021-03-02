version 1.0

task Vcfoverlay {
  input {
    File? vcf_file
  }
  command <<<
    vcfoverlay \
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