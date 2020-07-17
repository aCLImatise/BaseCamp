version 1.0

task KeyFreq {
  input {
    String? o
    String? p
  }
  command <<<
    keyFreq \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    p: ""
  }
}