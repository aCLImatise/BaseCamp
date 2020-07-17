version 1.0

task KrakenuniqTranslate {
  input {
    String? db
    Boolean? mpa_format
  }
  command <<<
    krakenuniq-translate \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--mpa-format" false="" mpa_format}
  >>>
  parameter_meta {
    db: ""
    mpa_format: ""
  }
}