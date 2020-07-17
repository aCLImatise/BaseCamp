version 1.0

task Openmg {
  input {
    String? jar
    String? ec
    String java
  }
  command <<<
    openmg \
      ~{java} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""} \
      ~{if defined(ec) then ("-ec " +  '"' + ec + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    ec: ""
    java: ""
  }
}