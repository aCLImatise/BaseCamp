version 1.0

task Krakenreport {
  input {
    Boolean? show_zeros
    String? db
  }
  command <<<
    kraken_report \
      ~{if (show_zeros) then "--show-zeros" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    show_zeros: ""
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}