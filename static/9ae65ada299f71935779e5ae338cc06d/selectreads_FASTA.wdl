version 1.0

task SelectreadsFASTA {
  input {
    String? o
    String? a
    String? s
    String? e
    String? c
    String? t
    Boolean? q
  }
  command <<<
    selectreads FASTA \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{true="-q" false="" q}
  >>>
  parameter_meta {
    o: ""
    a: ""
    s: ""
    e: ""
    c: ""
    t: ""
    q: ""
  }
}