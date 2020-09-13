version 1.0

task Candf {
  input {
    File? t
    File? r
    Int? var_2
    Int? var_3
    Int? var_4
    Int? var_5
    File? o
    Int? c
    String seq_file
  }
  command <<<
    candf \
      ~{seq_file} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(var_2) then ("-S " +  '"' + var_2 + '"') else ""} \
      ~{if defined(var_3) then ("-s " +  '"' + var_3 + '"') else ""} \
      ~{if defined(var_4) then ("-M " +  '"' + var_4 + '"') else ""} \
      ~{if defined(var_5) then ("-m " +  '"' + var_5 + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    r: ""
    var_2: ""
    var_3: ""
    var_4: ""
    var_5: ""
    o: ""
    c: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}