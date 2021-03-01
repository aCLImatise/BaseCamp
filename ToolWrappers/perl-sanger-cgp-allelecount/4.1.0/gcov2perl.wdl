version 1.0

task Gcov2perl {
  input {
    String? db
    Boolean? v
    Boolean? i
  }
  command <<<
    gcov2perl \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (i) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: ""
    v: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}