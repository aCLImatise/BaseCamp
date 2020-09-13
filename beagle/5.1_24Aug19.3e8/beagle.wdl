version 1.0

task Beagle {
  input {
    Float? jar
    String java
    String? arguments
  }
  command <<<
    beagle \
      ~{java} \
      ~{arguments} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    java: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}