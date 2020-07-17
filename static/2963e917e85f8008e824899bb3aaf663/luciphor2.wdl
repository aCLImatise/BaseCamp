version 1.0

task Luciphor2 {
  input {
    String? jar
    String java
    String input_file
  }
  command <<<
    luciphor2 \
      ~{java} \
      ~{input_file} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    java: ""
    input_file: ""
  }
}