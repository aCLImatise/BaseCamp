version 1.0

task FastxReverseComplement {
  input {
    String? o
    File? i
    Boolean? v
    Boolean? z
    Boolean? r
  }
  command <<<
    fastx_reverse_complement \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (z) then "-z" else ""} \
      ~{if (r) then "-r" else ""}
  >>>
  parameter_meta {
    o: ""
    i: ""
    v: ""
    z: ""
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}