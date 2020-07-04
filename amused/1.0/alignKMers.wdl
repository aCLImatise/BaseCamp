version 1.0

task AlignKMers {
  input {
    String? o
    String? l
    String? i
    Int? v
    String? m
  }
  command <<<
    alignKMers \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    o: "= where to output results [default=stdout]"
    l: "= where to output results [default=stderr]"
    i: ""
    v: ""
    m: ""
  }
}