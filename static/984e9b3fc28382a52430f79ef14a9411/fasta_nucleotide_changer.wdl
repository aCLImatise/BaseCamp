version 1.0

task FastaNucleotideChanger {
  input {
    Boolean? z
    Boolean? v
    String? i
    String? o
    Boolean? r
    Boolean? d
  }
  command <<<
    fasta_nucleotide_changer \
      ~{true="-z" false="" z} \
      ~{true="-v" false="" v} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="-r" false="" r} \
      ~{true="-d" false="" d}
  >>>
  parameter_meta {
    z: ""
    v: ""
    i: ""
    o: ""
    r: ""
    d: ""
  }
}