version 1.0

task PysradbSrrtosrs {
  input {
    File? db
    Boolean? detailed
    Boolean? desc
    Boolean? expand
    File? save_to
    String srr_ids
  }
  command <<<
    pysradb srr_to_srs \
      ~{srr_ids} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (detailed) then "--detailed" else ""} \
      ~{if (desc) then "--desc" else ""} \
      ~{if (expand) then "--expand" else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""}
  >>>
  parameter_meta {
    db: "Path to SRAmetadb.sqlite file"
    detailed: "'Output additional columns: [experiment_accession (SRX),\\nstudy_accession (SRP), run_alias (GSM_r), sample_alias\\n(GSM_), experiment_alias (GSM), study_alias (GSE)]"
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