version 1.0

task MakeIgnoreList {
  input {
    String? i
    String? o
    Int? c
    Int? m
  }
  command <<<
    makeIgnoreList \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    c: ""
    m: ""
  }
}