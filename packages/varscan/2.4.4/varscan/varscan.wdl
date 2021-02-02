version 1.0

task Varscan {
  input {
    String? jar
  }
  command <<<
    varscan \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
  }
  output {
    File out_stdout = stdout()
  }
}