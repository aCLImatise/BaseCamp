version 1.0

task Krakentranslate {
  input {
    Boolean? mpa_format
    String? db
  }
  command <<<
    kraken_translate \
      ~{if (mpa_format) then "--mpa-format" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mpa_format: ""
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}