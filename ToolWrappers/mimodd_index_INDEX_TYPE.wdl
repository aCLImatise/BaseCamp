version 1.0

task MimoddIndexINDEXTYPE {
  input {
    Int? s
    Boolean? v
    Boolean? q
    String? t
    File? o
    String index
  }
  command <<<
    mimodd index INDEX_TYPE \
      ~{index} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (q) then "-q" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    v: ""
    q: ""
    t: ""
    o: ""
    index: ""
  }
  output {
    File out_stdout = stdout()
  }
}