version 1.0

task Curesim {
  input {
    String? jar
    String? f
    String java
  }
  command <<<
    curesim \
      ~{java} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    f: ""
    java: ""
  }
}