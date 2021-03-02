version 1.0

task HgLoadNet {
  input {
    Boolean? no_bin
    String? old_table
    File? sql_table
    String? q_prefix
    String? warn
    String? test
    String database
    String track
    String files
  }
  command <<<
    hgLoadNet \
      ~{database} \
      ~{track} \
      ~{files} \
      ~{if (no_bin) then "-noBin" else ""} \
      ~{if defined(old_table) then ("-oldTable " +  '"' + old_table + '"') else ""} \
      ~{if defined(sql_table) then ("-sqlTable " +  '"' + sql_table + '"') else ""} \
      ~{if defined(q_prefix) then ("-qPrefix " +  '"' + q_prefix + '"') else ""} \
      ~{if defined(warn) then ("-warn " +  '"' + warn + '"') else ""} \
      ~{if defined(test) then ("-test " +  '"' + test + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_bin: "suppress bin field"
    old_table: "to existing table"
    sql_table: "Create table from .sql file"
    q_prefix: "prepend \\\"xxx-\\\" to query name"
    warn: "even with missing fields"
    test: "loading table"
    database: ""
    track: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}