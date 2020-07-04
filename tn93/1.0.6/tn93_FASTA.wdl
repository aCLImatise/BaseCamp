version 1.0

task Tn93FASTA {
  input {
    Boolean? v
    String? o
    String? t
    String? a
    String? g
    String? l
    String? d
    String? f
    String? s
    Boolean? b
    Boolean? r
    Boolean? c
    Boolean? zero
    Boolean? q
  }
  command <<<
    tn93 FASTA \
      ~{true="-v" false="" v} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{true="-b" false="" b} \
      ~{true="-r" false="" r} \
      ~{true="-c" false="" c} \
      ~{true="-0" false="" zero} \
      ~{true="-q" false="" q}
  >>>
  parameter_meta {
    v: ""
    o: ""
    t: ""
    a: ""
    g: ""
    l: ""
    d: ""
    f: ""
    s: ""
    b: ""
    r: ""
    c: ""
    zero: ""
    q: ""
  }
}