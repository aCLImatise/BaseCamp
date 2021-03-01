version 1.0

task Ibdseq {
  input {
    String? jar
    String java
    String? parameters
  }
  command <<<
    ibdseq \
      ~{java} \
      ~{parameters} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    jar: ""
    java: ""
    parameters: ""
  }
  output {
    File out_stdout = stdout()
  }
}