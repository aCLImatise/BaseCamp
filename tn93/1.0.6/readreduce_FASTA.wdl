version 1.0

task ReadreduceFASTA {
  input {
    String? o
    String? a
    String? l
    String? d
    Int? s
    Boolean? q
    Boolean? j
  }
  command <<<
    readreduce FASTA \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{true="-q" false="" q} \
      ~{true="-j" false="" j}
  >>>
  parameter_meta {
    o: ""
    a: ""
    l: ""
    d: ""
    s: ""
    q: ""
    j: ""
  }
}