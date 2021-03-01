version 1.0

task PysradbSearch {
  input {
    File? save_to
    File? db
    Boolean? assay
    Boolean? desc
    Boolean? detailed
    Boolean? expand
  }
  command <<<
    pysradb search \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (assay) then "--assay" else ""} \
      ~{if (desc) then "--desc" else ""} \
      ~{if (detailed) then "--detailed" else ""} \
      ~{if (expand) then "--expand" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    save_to: "Save metadata dataframe to file"
    db: "Path to SRAmetadb.sqlite file"
    assay: "Include assay type in output"
    desc: "Should sample_attribute be included"
    detailed: "Display detailed metadata table"
    expand: "Should sample_attribute be expanded"
  }
  output {
    File out_stdout = stdout()
  }
}