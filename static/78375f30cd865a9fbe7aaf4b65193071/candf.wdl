version 1.0

task Candf {
  input {
    Int? c
    String? o
    Int? var_2
    Int? var_3
    Int? var_4
    Int? var_5
    String? r
    String? t
    String seq_file
  }
  command <<<
    candf \
      ~{seq_file} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(var_2) then ("-m " +  '"' + var_2 + '"') else ""} \
      ~{if defined(var_3) then ("-M " +  '"' + var_3 + '"') else ""} \
      ~{if defined(var_4) then ("-s " +  '"' + var_4 + '"') else ""} \
      ~{if defined(var_5) then ("-S " +  '"' + var_5 + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    c: ""
    o: ""
    var_2: ""
    var_3: ""
    var_4: ""
    var_5: ""
    r: ""
    t: ""
    seq_file: ""
  }
}