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
  runtime {
    docker: "quay.io/biocontainers/msgf_plus:2021.03.22--0"
  }
  parameter_meta {
    jar: ""
    x_mx_three_five_zero_zero_m: ""
    java: ""
  }
  output {
    File out_stdout = stdout()
  }
}