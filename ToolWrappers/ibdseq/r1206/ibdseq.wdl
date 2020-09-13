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
  parameter_meta {
    jar: ""
    java: ""
    parameters: ""
  }
  output {
    File out_stdout = stdout()
  }
}