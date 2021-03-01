version 1.0

task EcofindPatterns {
  input {
    String? s
    String? var_1
    String? r
    Boolean? var_3
    Boolean? l
    String? d
    String eco_find
    String? rank
    String type
  }
  command <<<
    ecofind patterns \
      ~{eco_find} \
      ~{rank} \
      ~{type} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(var_1) then ("-p " +  '"' + var_1 + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if (var_3) then "-P" else ""} \
      ~{if (l) then "-l" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    s: ""
    var_1: ""
    r: ""
    var_3: ""
    l: ""
    d: ""
    eco_find: ""
    rank: ""
    type: ""
  }
  output {
    File out_stdout = stdout()
  }
}