version 1.0

task FastxRenamer {
  input {
    String? n
    Boolean? z
    Boolean? v
    String? i
    String? o
  }
  command <<<
    fastx_renamer \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{true="-z" false="" z} \
      ~{true="-v" false="" v} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    n: ""
    z: ""
    v: ""
    i: ""
    o: ""
  }
}