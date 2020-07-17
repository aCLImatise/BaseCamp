version 1.0

task FastqToFasta {
  input {
    Boolean? r
    Boolean? n
    Boolean? v
    Boolean? z
    String? i
    String? o
  }
  command <<<
    fastq_to_fasta \
      ~{true="-r" false="" r} \
      ~{true="-n" false="" n} \
      ~{true="-v" false="" v} \
      ~{true="-z" false="" z} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    r: ""
    n: ""
    v: ""
    z: ""
    i: ""
    o: ""
  }
}