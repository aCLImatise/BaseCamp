version 1.0

task PysradbSrptosrr {
  input {
    File? db
    File? save_to
    Boolean? detailed
    Boolean? desc
    Boolean? expand
  }
  command <<<
    pysradb srp_to_srr \
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
    detailed: "Output additional columns: [experiment_accession (SRX),\\nsample_accession (SRS), study_alias (GSE), experiment_alias\\n(GSM), sample_alias (GSM_), run_alias (GSM_r)]"
    desc: "Should sample_attribute be included"
    expand: "Should sample_attribute be expanded"
  }
  output {
    File out_stdout = stdout()
    File out_save_to = "${in_save_to}"
  }
}