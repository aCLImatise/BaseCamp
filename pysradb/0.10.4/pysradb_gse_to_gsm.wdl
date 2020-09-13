version 1.0

task PysradbGsetogsm {
  input {
    File? db
    File? save_to
    Boolean? detailed
    Boolean? desc
    Boolean? expand
    String gse_ids
  }
  command <<<
    pysradb gse_to_gsm \
      ~{gse_ids} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""} \
      ~{if (detailed) then "--detailed" else ""} \
      ~{if (desc) then "--desc" else ""} \
      ~{if (expand) then "--expand" else ""}
  >>>
  parameter_meta {
    db: "Path to SRAmetadb.sqlite file"
    save_to: "Save output to file"
    detailed: "Output additional columns: [sample_accession (SRS),\\nrun_accession (SRR), sample_alias (GSM), run_alias (GSM_r)]"
    desc: "Should sample_attribute be included"
    expand: "Should sample_attribute be expanded"
    gse_ids: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_save_to = "${in_save_to}"
  }
}