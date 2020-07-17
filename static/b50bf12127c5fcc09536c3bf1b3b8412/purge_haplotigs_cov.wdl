version 1.0

task PurgeHaplotigsCov {
  input {
    String? i
    Int? l
    Int? m
    Int? h
    String? o
    String? j
    String? s
  }
  command <<<
    purge_haplotigs cov \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(j) then ("-j " +  '"' + j + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    l: ""
    m: ""
    h: ""
    o: ""
    j: ""
    s: ""
  }
}