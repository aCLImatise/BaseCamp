version 1.0

task MsgfPlus {
  input {
    String? jar
    Boolean? x_mx_three_five_zero_zero_m
    String java
  }
  command <<<
    msgf_plus \
      ~{java} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""} \
      ~{if (x_mx_three_five_zero_zero_m) then "-Xmx3500M" else ""}
  >>>
  parameter_meta {
    jar: ""
    x_mx_three_five_zero_zero_m: ""
    java: ""
  }
  output {
    File out_stdout = stdout()
  }
}