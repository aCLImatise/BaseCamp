version 1.0

task Lorikeet {
  input {
    String? jar
  }
  command <<<
    lorikeet \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
  }
  output {
    File out_stdout = stdout()
  }
}