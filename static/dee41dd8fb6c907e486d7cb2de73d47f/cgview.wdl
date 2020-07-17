version 1.0

task Cgview {
  input {
    String? jar
    String java
    String? option
  }
  command <<<
    cgview \
      ~{java} \
      ~{option} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    java: ""
    option: ""
  }
}