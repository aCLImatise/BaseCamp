version 1.0

task Metilene {
  input {
    String? var_0
    String? g
    String? var_2
    String? d
    String? t
  }
  command <<<
    metilene \
      ~{if defined(var_0) then ("-M " +  '"' + var_0 + '"') else ""} \
      ~{if defined(g) then ("-G " +  '"' + g + '"') else ""} \
      ~{if defined(var_2) then ("-m " +  '"' + var_2 + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    g: ""
    var_2: ""
    d: ""
    t: ""
  }
}