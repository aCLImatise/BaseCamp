version 1.0

task Metfrag {
  input {
    String? jar
    String java
    String parameter_file
  }
  command <<<
    metfrag \
      ~{java} \
      ~{parameter_file} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    jar: ""
    java: ""
    parameter_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}