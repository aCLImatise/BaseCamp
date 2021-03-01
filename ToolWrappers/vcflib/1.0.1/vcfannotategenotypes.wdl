version 1.0

task Vcfannotategenotypes {
  input {
    String annotation_tag
    File vcf_file
  }
  command <<<
    vcfannotategenotypes \
      ~{annotation_tag} \
      ~{vcf_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    annotation_tag: ""
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}