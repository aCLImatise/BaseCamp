version 1.0

task Nmode {
  input {
    String? ref
    String? r
    String? c
    String? p
    String? var_4
    String? i
    Boolean? var_6
  }
  command <<<
    nmode \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(var_4) then ("-o " +  '"' + var_4 + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (var_6) then "-O" else ""}
  >>>
  parameter_meta {
    ref: ""
    r: ""
    c: ""
    p: ""
    var_4: ""
    i: ""
    var_6: ""
  }
  output {
    File out_stdout = stdout()
  }
}