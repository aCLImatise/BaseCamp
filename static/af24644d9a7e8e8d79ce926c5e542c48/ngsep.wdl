version 1.0

task Ngsep {
  input {
    Int? jar
    String java
    String var_command
    String options
    String arguments
  }
  command <<<
    ngsep \
      ~{java} \
      ~{var_command} \
      ~{options} \
      ~{arguments} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    java: ""
    var_command: ""
    options: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}