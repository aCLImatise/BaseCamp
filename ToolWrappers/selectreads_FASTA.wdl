version 1.0

task SelectreadsFASTA {
  input {
    Boolean? q
    String? t
    String? c
    String? e
    String? s
    String? a
    String? o
  }
  command <<<
    selectreads FASTA \
      ~{if (q) then "-q" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    q: ""
    t: ""
    c: ""
    e: ""
    s: ""
    a: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}