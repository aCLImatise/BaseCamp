version 1.0

task REALPHYV112 {
  input {
    Boolean? x_mx
    String? jar
    String java
    String? available
    String? ram
    String? in
    String? mb
    String m
    String? sequence
    Directory? var_9
    String? var_output
    Directory? var_11
  }
  command <<<
    REALPHY_v112 \
      ~{java} \
      ~{available} \
      ~{ram} \
      ~{in} \
      ~{mb} \
      ~{m} \
      ~{sequence} \
      ~{var_9} \
      ~{var_output} \
      ~{var_11} \
      ~{true="-Xmx" false="" x_mx} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    x_mx: ""
    jar: ""
    java: ""
    available: ""
    ram: ""
    in: ""
    mb: ""
    m: ""
    sequence: ""
    var_9: ""
    var_output: ""
    var_11: ""
  }
}