version 1.0

task FastaNucleotideChanger {
  input {
    Boolean? d
    Boolean? r
    String? o
    File? i
    Boolean? v
    Boolean? z
  }
  command <<<
    fasta_nucleotide_changer \
      ~{if (d) then "-d" else ""} \
      ~{if (r) then "-r" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (z) then "-z" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    d: ""
    r: ""
    o: ""
    i: ""
    v: ""
    z: ""
  }
  output {
    File out_stdout = stdout()
  }
}