version 1.0

task RearrangeSnvMatrix.pl {
  input {
    String? t
    String? o
    String? m
    String? p
  }
  command <<<
    rearrange_snv_matrix.pl \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    o: ""
    m: ""
    p: ""
  }
}