version 1.0

task KrakenhllFilter {
  input {
    String? db
    String? threshold
  }
  command <<<
    krakenhll-filter \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    db: ""
    threshold: ""
  }
}