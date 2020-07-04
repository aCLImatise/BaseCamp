version 1.0

task KrakenReport {
  input {
    String? db
    Boolean? show_zeros
  }
  command <<<
    kraken-report \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--show-zeros" false="" show_zeros}
  >>>
  parameter_meta {
    db: ""
    show_zeros: ""
  }
}