version 1.0

task TdbQuery {
  input {
    Boolean? root
    String? release
    String sql_statement
  }
  command <<<
    tdbQuery \
      ~{sql_statement} \
      ~{true="-root" false="" root} \
      ~{if defined(release) then ("-release " +  '"' + release + '"') else ""}
  >>>
  parameter_meta {
    root: "=/path/to/trackDb/root/dir"
    release: "|beta|public"
    sql_statement: ""
  }
}