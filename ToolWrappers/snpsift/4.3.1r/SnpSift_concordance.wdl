version 1.0

task SnpSiftConcordance {
  input {
    File? only_use_ids
    String? jar
    String java
    String concordance
    String reference_dot_vcf
    String sequencing_dot_vcf
  }
  command <<<
    SnpSift concordance \
      ~{java} \
      ~{concordance} \
      ~{reference_dot_vcf} \
      ~{sequencing_dot_vcf} \
      ~{if defined(only_use_ids) then ("-s " +  '"' + only_use_ids + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    only_use_ids: ": Only use sample IDs in file (format: one sample ID per line)."
    jar: ""
    java: ""
    concordance: ""
    reference_dot_vcf: ""
    sequencing_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}