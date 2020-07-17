version 1.0

task TbProfilerReformat {
  input {
    Boolean? txt
    Boolean? csv
    Boolean? pdf
    String? db
    String? external_db
    String json
  }
  command <<<
    tb-profiler reformat \
      ~{json} \
      ~{true="--txt" false="" txt} \
      ~{true="--csv" false="" csv} \
      ~{true="--pdf" false="" pdf} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(external_db) then ("--external_db " +  '"' + external_db + '"') else ""}
  >>>
  parameter_meta {
    txt: "Add text output (default: False)"
    csv: "Add CSV output (default: False)"
    pdf: "Add PDF output. This requires pdflatex to be installed (default: False)"
    db: "Mutation panel name (default: tbdb)"
    external_db: "Path to db files prefix (overrides \"--db\" parameter) (default: None)"
    json: "Sample prefix"
  }
}