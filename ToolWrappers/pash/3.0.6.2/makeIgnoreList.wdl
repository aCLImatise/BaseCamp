version 1.0

task MakeIgnoreList {
  input {
    Int? m
    Int? c
    File? o
    File? i
  }
  command <<<
    makeIgnoreList \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    c: ""
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}