version 1.0

task KrakenhllTranslate {
  input {
    String? db
    Boolean? mpa_format
  }
  command <<<
    krakenhll-translate \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--mpa-format" false="" mpa_format}
  >>>
  parameter_meta {
    db: ""
    mpa_format: ""
  }
}