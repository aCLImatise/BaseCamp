version 1.0

task Vcfclassify {
  input {
    File vcf_file
  }
  command <<<
    vcfclassify \
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