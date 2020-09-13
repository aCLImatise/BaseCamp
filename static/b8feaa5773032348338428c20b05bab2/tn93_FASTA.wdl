version 1.0

task Tn93FASTA {
  input {
    Boolean? q
    Boolean? zero
    Boolean? c
    Boolean? r
    Boolean? b
    String? s
    String? f
    String? d
    String? l
    String? g
    String? a
    String? t
    String? o
    Boolean? v
  }
  command <<<
    tn93 FASTA \
      ~{if (q) then "-q" else ""} \
      ~{if (zero) then "-0" else ""} \
      ~{if (c) then "-c" else ""} \
      ~{if (r) then "-r" else ""} \
      ~{if (b) then "-b" else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    q: ""
    zero: ""
    c: ""
    r: ""
    b: ""
    s: ""
    f: ""
    d: ""
    l: ""
    g: ""
    a: ""
    t: ""
    o: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}