version 1.0

task Livekrakenreport {
  input {
    Boolean? show_zeros
    String? db
  }
  command <<<
    livekraken_report \
      ~{if (show_zeros) then "--show-zeros" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    show_zeros: ""
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}