version 1.0

task LivekrakenFilter {
  input {
    String? db
    String? threshold
  }
  command <<<
    livekraken-filter \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    db: ""
    threshold: ""
  }
}