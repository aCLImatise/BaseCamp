version 1.0

task Kggseq {
  input {
    String? jar
    Boolean? x_mx_on_eg
    String java
    String param_dot_txt
  }
  command <<<
    kggseq \
      ~{java} \
      ~{param_dot_txt} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""} \
      ~{if (x_mx_on_eg) then "-Xmx1g" else ""}
  >>>
  parameter_meta {
    jar: ""
    x_mx_on_eg: ""
    java: ""
    param_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}