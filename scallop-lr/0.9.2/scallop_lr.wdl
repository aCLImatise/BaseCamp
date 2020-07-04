version 1.0

task ScallopLr {
  input {
    String? i
    String? o
    String? c
  }
  command <<<
    scallop-lr \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    c: ""
  }
}