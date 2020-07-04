version 1.0

task FastxReverseComplement {
  input {
    Boolean? r
    Boolean? z
    Boolean? v
    String? i
    String? o
  }
  command <<<
    fastx_reverse_complement \
      ~{true="-r" false="" r} \
      ~{true="-z" false="" z} \
      ~{true="-v" false="" v} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    r: ""
    z: ""
    v: ""
    i: ""
    o: ""
  }
}