version 1.0

task Luciphor2 {
  input {
    Int? jar
    String java
    String input_file
  }
  command <<<
    luciphor2 \
      ~{java} \
      ~{input_file} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    jar: ""
    java: ""
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}