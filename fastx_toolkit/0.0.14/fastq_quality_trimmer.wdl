version 1.0

task FastqQualityTrimmer {
  input {
    Boolean? v
    String? t
    String? l
    Boolean? z
    String? i
    String? o
  }
  command <<<
    fastq_quality_trimmer \
      ~{true="-v" false="" v} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{true="-z" false="" z} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    t: ""
    l: ""
    z: ""
    i: ""
    o: ""
  }
}