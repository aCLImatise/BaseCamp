version 1.0

task FastxUncollapser {
  input {
    String? o
    File? i
    Boolean? v
    String? c
    String fast_a_un_collapse_r
  }
  command <<<
    fastx_uncollapser \
      ~{fast_a_un_collapse_r} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    i: ""
    v: ""
    c: ""
    fast_a_un_collapse_r: ""
  }
  output {
    File out_stdout = stdout()
  }
}