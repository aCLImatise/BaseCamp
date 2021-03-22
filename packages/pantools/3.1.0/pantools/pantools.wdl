version 1.0

task Pantools {
  input {
    File? jar
    String java
    String jvm_options
    String subcommand
    String arguments
  }
  command <<<
    pantools \
      ~{java} \
      ~{jvm_options} \
      ~{subcommand} \
      ~{arguments} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pantools:3.1.0--0"
  }
  parameter_meta {
    jar: ""
    java: ""
    jvm_options: ""
    subcommand: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}