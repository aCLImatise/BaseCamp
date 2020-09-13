version 1.0

task Abyssdbtxt {
  input {
    String? e
  }
  command <<<
    abyss_db_txt \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""}
  >>>
  parameter_meta {
    e: ":"
  }
  output {
    File out_stdout = stdout()
  }
}