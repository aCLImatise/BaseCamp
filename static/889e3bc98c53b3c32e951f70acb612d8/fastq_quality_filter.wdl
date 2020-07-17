version 1.0

task FastqQualityFilter {
  input {
    Boolean? v
    String? q
    String? p
    Boolean? z
    String? i
    String? o
  }
  command <<<
    fastq_quality_filter \
      ~{true="-v" false="" v} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{true="-z" false="" z} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    q: ""
    p: ""
    z: ""
    i: ""
    o: ""
  }
}