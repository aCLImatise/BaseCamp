version 1.0

task MimoddIndexFILETOINDEX {
  input {
    Int? s
    Boolean? v
    Boolean? q
    String? t
    File? o
    String index
  }
  command <<<
    mimodd index FILE_TO_INDEX \
      ~{index} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (q) then "-q" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
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