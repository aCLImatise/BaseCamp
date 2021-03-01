version 1.0

task ReadreduceFASTA {
  input {
    Boolean? j
    Boolean? q
    Int? s
    String? d
    String? l
    String? a
    String? o
  }
  command <<<
    readreduce FASTA \
      ~{if (j) then "-j" else ""} \
      ~{if (q) then "-q" else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    j: ""
    q: ""
    s: ""
    d: ""
    l: ""
    a: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}