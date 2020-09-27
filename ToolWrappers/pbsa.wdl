version 1.0

task Pbsa {
  input {
    String? c
    String? p
    String? var_2
    String? i
    Boolean? var_4
    String? pqr
  }
  command <<<
    pbsa \
      ~{pqr} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(var_2) then ("-o " +  '"' + var_2 + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (var_4) then "-O" else ""}
  >>>
  parameter_meta {
    c: ""
    p: ""
    var_2: ""
    i: ""
    var_4: ""
    pqr: ""
  }
  output {
    File out_stdout = stdout()
  }
}