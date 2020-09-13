version 1.0

task FastqToFasta {
  input {
    String? o
    File? i
    Boolean? z
    Boolean? v
    Boolean? n
    Boolean? r
  }
  command <<<
    fastq_to_fasta \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (z) then "-z" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if (r) then "-r" else ""}
  >>>
  parameter_meta {
    o: ""
    i: ""
    z: ""
    v: ""
    n: ""
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}