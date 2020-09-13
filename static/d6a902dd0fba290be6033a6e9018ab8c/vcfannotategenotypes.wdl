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
  parameter_meta {
    annotation_tag: ""
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}