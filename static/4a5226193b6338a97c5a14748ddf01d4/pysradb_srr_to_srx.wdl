version 1.0

task PysradbSrrtosrx {
  input {
    Boolean? detailed
    Boolean? desc
    Boolean? expand
    File? save_to
    String srr_ids
  }
  command <<<
    pysradb srr_to_srx \
      ~{srr_ids} \
      ~{if (detailed) then "--detailed" else ""} \
      ~{if (desc) then "--desc" else ""} \
      ~{if (expand) then "--expand" else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pysradb:1.0.1--py_0"
  }
  parameter_meta {
    detailed: "Output additional columns: [sample_accession (SRS),\\nstudy_accession (SRP), run_alias (GSM_r), experiment_alias\\n(GSM), sample_alias (GSM_), study_alias (GSE)]"
    desc: "Should sample_attribute be included"
    expand: "Should sample_attribute be expanded"
    save_to: "Save output to file"
    srr_ids: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_save_to = "${in_save_to}"
  }
}