version 1.0

task PysradbGsmToSrs {
  input {
    String? db
    Boolean? desc
    Boolean? detailed
    Boolean? expand
    String? save_to
  }
  command <<<
    pysradb gsm-to-srs \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--desc" false="" desc} \
      ~{true="--detailed" false="" detailed} \
      ~{true="--expand" false="" expand} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""}
  >>>
  parameter_meta {
    db: "Path to SRAmetadb.sqlite file"
    desc: "Should sample_attribute be included"
    detailed: "Output additional columns: [experiment_accession (SRX), run_accession (SRR), study_accession (SRP), run_alias (GSM_r), experiment_alias (GSM), study_alias (GSE)]"
    expand: "Should sample_attribute be expanded"
    save_to: "Save output to file"
  }
}