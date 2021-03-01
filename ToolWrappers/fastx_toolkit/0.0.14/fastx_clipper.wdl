version 1.0

task FastxClipper {
  input {
    String? o
    File? i
    Boolean? z
    Boolean? v
    Boolean? var_4
    Boolean? var_5
    String? var_6
    Boolean? n
    String? l
    Boolean? var_9
    String? a
  }
  command <<<
    fastx_clipper \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (z) then "-z" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (var_4) then "-C" else ""} \
      ~{if (var_5) then "-c" else ""} \
      ~{if defined(var_6) then ("-d " +  '"' + var_6 + '"') else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if (var_9) then "-D" else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    i: ""
    z: ""
    v: ""
    var_4: ""
    var_5: ""
    var_6: ""
    n: ""
    l: ""
    var_9: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
  }
}