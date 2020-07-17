version 1.0

task KrakenFilter {
  input {
    String? db
    String? threshold
  }
  command <<<
    kraken-filter \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    db: ""
    threshold: ""
  }
}