version 1.0

task Krakenhlltranslate {
  input {
    Boolean? mpa_format
    String? db
  }
  command <<<
    krakenhll_translate \
      ~{if (mpa_format) then "--mpa-format" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    mpa_format: ""
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}