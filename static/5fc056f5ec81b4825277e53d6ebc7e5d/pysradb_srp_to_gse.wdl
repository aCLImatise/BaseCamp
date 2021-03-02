version 1.0

task PysradbSrptogse {
  input {
    File? db
    File? save_to
    Boolean? detailed
    Boolean? desc
    Boolean? expand
  }
  command <<<
    pysradb srp_to_gse \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""} \
      ~{if (detailed) then "--detailed" else ""} \
      ~{if (desc) then "--desc" else ""} \
      ~{if (expand) then "--expand" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "Path to SRAmetadb.sqlite file"
    save_to: "Save output to file"
    detailed: "Output additional columns: [sample_accession,\\nrun_accession]"
    desc: "Should sample_attribute be included"
    expand: "Should sample_attribute be expanded"
  }
  output {
    File out_stdout = stdout()
    File out_save_to = "${in_save_to}"
  }
}