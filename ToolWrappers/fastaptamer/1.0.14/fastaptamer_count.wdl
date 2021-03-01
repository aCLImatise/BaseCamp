version 1.0

task FastaptamerCount {
  input {
    String? o
    File? i
    Boolean? v
    Boolean? q
  }
  command <<<
    fastaptamer_count \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (q) then "-q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    i: ""
    v: ""
    q: ""
  }
  output {
    File out_stdout = stdout()
  }
}