version 1.0

task MsgfPlus {
  input {
    Boolean? x_mx_three_five_zero_zero_m
    String? jar
    String java
  }
  command <<<
    msgf_plus \
      ~{java} \
      ~{true="-Xmx3500M" false="" x_mx_three_five_zero_zero_m} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    x_mx_three_five_zero_zero_m: ""
    jar: ""
    java: ""
  }
}