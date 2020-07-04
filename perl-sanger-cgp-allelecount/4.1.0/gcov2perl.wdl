version 1.0

task Gcov2perl {
  input {
    Boolean? i
    Boolean? v
    String? db
    String gcov_files
  }
  command <<<
    gcov2perl \
      ~{gcov_files} \
      ~{true="-i" false="" i} \
      ~{true="-v" false="" v} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    v: ""
    db: ""
    gcov_files: ""
  }
}