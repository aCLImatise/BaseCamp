version 1.0

task FastqQualityConverter {
  input {
    Boolean? a
    Boolean? n
    Boolean? z
    String? i
    String? f
  }
  command <<<
    fastq_quality_converter \
      ~{true="-a" false="" a} \
      ~{true="-n" false="" n} \
      ~{true="-z" false="" z} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    n: ""
    z: ""
    i: ""
    f: ""
  }
}