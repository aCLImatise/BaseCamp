version 1.0

task HgTrackDb {
  input {
    Boolean? strict
    File? ra_name
    String? release
    Boolean? settings
    String track_db
    String track_db_dot_sql
  }
  command <<<
    hgTrackDb \
      ~{track_db} \
      ~{track_db_dot_sql} \
      ~{if (strict) then "-strict" else ""} \
      ~{if defined(ra_name) then ("-raName " +  '"' + ra_name + '"') else ""} \
      ~{if defined(release) then ("-release " +  '"' + release + '"') else ""} \
      ~{if (settings) then "-settings" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    strict: "- only include tables that exist (and complain about missing html files)."
    ra_name: "- Specify a file name to use other than trackDb.ra\\nfor the ra files."
    release: "|beta|public - Include trackDb entries with this release tag only."
    settings: "- for trackDb scanning, output table name, type line,\\n-  and settings hash to stderr while loading everything.\\n"
    track_db: "- name of table to create, usually trackDb, or trackDb_${USER}"
    track_db_dot_sql: "- SQL definition of the table to create, typically from\\n- the source tree file: src/hg/lib/trackDb.sql\\n- the table name in the CREATE statement is replaced by the\\n- table name specified on this command line."
  }
  output {
    File out_stdout = stdout()
  }
}