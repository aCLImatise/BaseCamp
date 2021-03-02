version 1.0

task TbprofilerReformat {
  input {
    Boolean? txt
    Boolean? csv
    Boolean? pdf
    String? db
    File? external_db
  }
  command <<<
    tb_profiler reformat \
      ~{if (txt) then "--txt" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (pdf) then "--pdf" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(external_db) then ("--external_db " +  '"' + external_db + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    txt: "Add text output (default: False)"
    csv: "Add CSV output (default: False)"
    pdf: "Add PDF output. This requires pdflatex to be installed\\n(default: False)"
    db: "Mutation panel name (default: tbdb)"
    external_db: "Path to db files prefix (overrides \\\"--db\\\" parameter)\\n(default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}