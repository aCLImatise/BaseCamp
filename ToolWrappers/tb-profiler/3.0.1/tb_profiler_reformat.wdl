version 1.0

task TbprofilerReformat {
  input {
    Boolean? txt
    Boolean? csv
    String? db
    File? external_db
  }
  command <<<
    tb_profiler reformat \
      ~{if (txt) then "--txt" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(external_db) then ("--external_db " +  '"' + external_db + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:3.0.1--pypyh3252c3a_0"
  }
  parameter_meta {
    txt: "Add text output (default: False)"
    csv: "Add CSV output (default: False)"
    db: "Mutation panel name (default: tbdb)"
    external_db: "Path to db files prefix (overrides \\\"--db\\\" parameter)\\n(default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}