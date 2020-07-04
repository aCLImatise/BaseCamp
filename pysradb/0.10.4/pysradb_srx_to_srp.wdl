version 1.0

task PysradbSrxToSrp {
  input {
    String? db
    Boolean? desc
    Boolean? detailed
    Boolean? expand
    String? save_to
  }
  command <<<
    pysradb srx-to-srp \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--desc" false="" desc} \
      ~{true="--detailed" false="" detailed} \
      ~{true="--expand" false="" expand} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""}
  >>>
  parameter_meta {
    db: "Path to SRAmetadb.sqlite file"
    desc: "Should sample_attribute be included"
    detailed: "Output additional columns: [run_accession (SRR), sample_accession (SRS), experiment_alias (GSM), run_alias (GSM_r), sample_alias (GSM), study_alias (GSE)]"
    expand: "Should sample_attribute be expanded"
    save_to: "Save output to file"
  }
}