version 1.0

task PysradbSrxToSrr {
  input {
    String? db
    Boolean? desc
    Boolean? detailed
    Boolean? expand
    String? save_to
  }
  command <<<
    pysradb srx-to-srr \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--desc" false="" desc} \
      ~{true="--detailed" false="" detailed} \
      ~{true="--expand" false="" expand} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""}
  >>>
  parameter_meta {
    db: "Path to SRAmetadb.sqlite file"
    desc: "Should sample_attribute be included"
    detailed: "Output additional columns: [sample_accession, study_accession]"
    expand: "Should sample_attribute be expanded"
    save_to: "Save output to file"
  }
}