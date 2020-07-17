version 1.0

task PysradbSrrToSrp {
  input {
    String? db
    Boolean? detailed
    Boolean? desc
    Boolean? expand
    String? save_to
  }
  command <<<
    pysradb srr-to-srp \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--detailed" false="" detailed} \
      ~{true="--desc" false="" desc} \
      ~{true="--expand" false="" expand} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""}
  >>>
  parameter_meta {
    db: "Path to SRAmetadb.sqlite file"
    detailed: "'Output additional columns: [experiment_accession (SRX), sample_accession (SRS), run_alias (GSM_r), experiment_alias (GSM), sample_alias (GSM_), study_alias (GSE)]"
    desc: "Should sample_attribute be included"
    expand: "Should sample_attribute be expanded"
    save_to: "Save output to file"
  }
}