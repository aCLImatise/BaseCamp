version 1.0

task PysradbSrxtosrp {
  input {
    File? db
    Boolean? desc
    Boolean? detailed
    Boolean? expand
    File? save_to
    String srx_ids
  }
  command <<<
    pysradb srx_to_srp \
      ~{srx_ids} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (desc) then "--desc" else ""} \
      ~{if (detailed) then "--detailed" else ""} \
      ~{if (expand) then "--expand" else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "Path to SRAmetadb.sqlite file"
    desc: "Should sample_attribute be included"
    detailed: "Output additional columns: [run_accession (SRR),\\nsample_accession (SRS), experiment_alias (GSM), run_alias\\n(GSM_r), sample_alias (GSM), study_alias (GSE)]"
    expand: "Should sample_attribute be expanded"
    save_to: "Save output to file"
    srx_ids: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_save_to = "${in_save_to}"
  }
}