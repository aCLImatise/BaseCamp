version 1.0

task Kggseq {
  input {
    Boolean? x_mx_on_eg
    String? jar
    String java
    String param_dot_txt
  }
  command <<<
    kggseq \
      ~{java} \
      ~{param_dot_txt} \
      ~{true="-Xmx1g" false="" x_mx_on_eg} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    x_mx_on_eg: ""
    jar: ""
    java: ""
    param_dot_txt: ""
  }
}