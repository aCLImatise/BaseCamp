version 1.0

task PysradbGsmtosrs {
  input {
    Boolean? desc
    Boolean? detailed
    Boolean? expand
    File? save_to
    String gsm_ids
  }
  command <<<
    pysradb gsm_to_srs \
      ~{gsm_ids} \
      ~{if (desc) then "--desc" else ""} \
      ~{if (detailed) then "--detailed" else ""} \
      ~{if (expand) then "--expand" else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pysradb:1.0.1--py_0"
  }
  parameter_meta {
    desc: "Should sample_attribute be included"
    detailed: "Output additional columns: [experiment_accession (SRX),\\nrun_accession (SRR), study_accession (SRP), run_alias\\n(GSM_r), experiment_alias (GSM), study_alias (GSE)]"
    expand: "Should sample_attribute be expanded"
    save_to: "Save output to file"
    gsm_ids: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_save_to = "${in_save_to}"
  }
}