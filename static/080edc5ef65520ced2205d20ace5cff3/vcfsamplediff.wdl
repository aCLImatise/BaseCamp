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
    docker: "None"
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