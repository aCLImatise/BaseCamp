version 1.0

task PysradbMetadata {
  input {
    String? save_to
    String? db
    Boolean? assay
    Boolean? desc
    Boolean? detailed
    Boolean? expand
  }
  command <<<
    pysradb metadata \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--assay" false="" assay} \
      ~{true="--desc" false="" desc} \
      ~{true="--detailed" false="" detailed} \
      ~{true="--expand" false="" expand}
  >>>
  parameter_meta {
    save_to: "Save metadata dataframe to file"
    db: "Path to SRAmetadb.sqlite file"
    assay: "Include assay type in output"
    desc: "Should sample_attribute be included"
    detailed: "Display detailed metadata table"
    expand: "Should sample_attribute be expanded"
  }
}