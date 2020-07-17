version 1.0

task FastqMasker {
  input {
    Boolean? v
    String? q
    String? r
    Boolean? z
    String? i
    String? o
  }
  command <<<
    fastq_masker \
      ~{true="-v" false="" v} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{true="-z" false="" z} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    q: ""
    r: ""
    z: ""
    i: ""
    o: ""
  }
}