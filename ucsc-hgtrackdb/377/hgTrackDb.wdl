version 1.0

task HgTrackDb {
  input {
    String? release
    Boolean? settings
    String org
    String database
    String track_db
    String track_db_dot_sql
    String hg_root
  }
  command <<<
    hgTrackDb \
      ~{org} \
      ~{database} \
      ~{track_db} \
      ~{track_db_dot_sql} \
      ~{hg_root} \
      ~{if defined(release) then ("-release " +  '"' + release + '"') else ""} \
      ~{true="-settings" false="" settings}
  >>>
  parameter_meta {
    release: "|beta|public - Include trackDb entries with this release tag only."
    settings: "- for trackDb scanning, output table name, type line, -  and settings hash to stderr while loading everything."
    org: ""
    database: ""
    track_db: ""
    track_db_dot_sql: ""
    hg_root: ""
  }
}