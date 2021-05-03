version 1.0

task Seqscreen {
  input {
    String? jar
    String java
    String options
  }
  command <<<
    seqscreen \
      ~{java} \
      ~{options} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqscreen:1.5.0--hdfd78af_0"
  }
  parameter_meta {
    jar: ""
    java: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}