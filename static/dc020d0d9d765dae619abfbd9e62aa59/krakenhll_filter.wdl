version 1.0

task Krakenhllfilter {
  input {
    Int? threshold
    String? db
  }
  command <<<
    krakenhll_filter \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    threshold: ""
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}