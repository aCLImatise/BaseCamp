version 1.0

task KrakenuniqFilter {
  input {
    String? db
    String? threshold
  }
  command <<<
    krakenuniq-filter \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    db: ""
    threshold: ""
  }
}