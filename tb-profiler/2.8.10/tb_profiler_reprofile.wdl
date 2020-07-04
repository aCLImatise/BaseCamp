version 1.0

task TbProfilerReprofile {
  input {
    String? prefix
    String? db
    String? external_db
    String json
  }
  command <<<
    tb-profiler reprofile \
      ~{json} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(external_db) then ("--external_db " +  '"' + external_db + '"') else ""}
  >>>
  parameter_meta {
    prefix: "Sample prefix (default: tbprofiler)"
    db: "Mutation panel name (default: tbdb)"
    external_db: "Path to db files prefix (overrides \"--db\" parameter) (default: None)"
    json: "JSON output file"
  }
}