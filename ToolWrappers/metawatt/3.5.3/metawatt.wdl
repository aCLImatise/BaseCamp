version 1.0

task Metawatt {
  input {
    Int? jar
    String java
  }
  command <<<
    metawatt \
      ~{java} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    java: ""
  }
  output {
    File out_stdout = stdout()
  }
}