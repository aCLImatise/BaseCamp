version 1.0

task HgFindSpec {
  input {
    String? release
    String hg_find_spec_dot_sql
    String hg_root
  }
  command <<<
    hgFindSpec \
      ~{hg_find_spec_dot_sql} \
      ~{hg_root} \
      ~{if defined(release) then ("-release " +  '"' + release + '"') else ""}
  >>>
  parameter_meta {
    release: "|beta|public - Include trackDb entries with this release tag only."
    hg_find_spec_dot_sql: ""
    hg_root: ""
  }
}