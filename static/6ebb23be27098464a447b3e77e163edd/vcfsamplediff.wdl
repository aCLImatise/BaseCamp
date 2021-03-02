version 1.0

task Vcfsamplediff {
  input {
    Boolean? strict
    String tag
    String? sample
    File vcf_file
  }
  command <<<
    vcfsamplediff \
      ~{tag} \
      ~{sample} \
      ~{vcf_file} \
      ~{if (strict) then "--strict" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    strict: "Require that no observations in the germline support the somatic alternate."
    tag: ""
    sample: ""
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}