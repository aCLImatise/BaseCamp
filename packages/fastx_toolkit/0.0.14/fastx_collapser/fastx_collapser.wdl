version 1.0

task FastxCollapser {
  input {
    String? o
    File? i
    Boolean? v
  }
  command <<<
    fastx_collapser \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    o: ""
    i: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}