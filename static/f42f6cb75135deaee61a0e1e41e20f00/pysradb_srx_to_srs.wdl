version 1.0

task PysradbSrxToSrs {
  input {
    String? db
    String? save_to
    Boolean? detailed
    Boolean? desc
    Boolean? expand
  }
  command <<<
    pysradb srx-to-srs \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""} \
      ~{true="--detailed" false="" detailed} \
      ~{true="--desc" false="" desc} \
      ~{true="--expand" false="" expand}
  >>>
  parameter_meta {
    db: "Path to SRAmetadb.sqlite file"
    save_to: "Save output to file"
    detailed: "Output additional columns: [run_accession, study_accession]"
    desc: "Should sample_attribute be included"
    expand: "Should sample_attribute be expanded"
  }
}