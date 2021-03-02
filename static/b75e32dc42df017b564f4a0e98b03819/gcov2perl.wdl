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
    docker: "quay.io/biocontainers/perl-sanger-cgp-allelecount:4.2.1--pl526h516909a_0"
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