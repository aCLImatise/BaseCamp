version 1.0

task HgFindSpec {
  input {
    Boolean? strict
    File? ra_name
    String? release
    String hg_find_spec_dot_sql
  }
  command <<<
    hgFindSpec \
      ~{hg_find_spec_dot_sql} \
      ~{if (strict) then "-strict" else ""} \
      ~{if defined(ra_name) then ("-raName " +  '"' + ra_name + '"') else ""} \
      ~{if defined(release) then ("-release " +  '"' + release + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    strict: "Add spec to hgFindSpec only if its table(s) exist."
    ra_name: "- Specify a file name to use other than trackDb.ra\\nfor the ra files."
    release: "|beta|public - Include trackDb entries with this release tag only."
    hg_find_spec_dot_sql: ""
  }
  output {
    File out_stdout = stdout()
  }
}