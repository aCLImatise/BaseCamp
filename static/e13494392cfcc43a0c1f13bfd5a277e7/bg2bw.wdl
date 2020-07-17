version 1.0

task Bg2bw {
  input {
    String? i
    String? c
    String? o
  }
  command <<<
    bg2bw \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    c: ""
    o: ""
  }
}