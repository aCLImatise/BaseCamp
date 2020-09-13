version 1.0

task Mendelscan {
  input {
    String? jar
  }
  command <<<
    mendelscan \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
  }
  output {
    File out_stdout = stdout()
  }
}