version 1.0

task FastqMasker {
  input {
    String? o
    File? i
    Boolean? z
    String? r
    String? q
    Boolean? v
  }
  command <<<
    fastq_masker \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (z) then "-z" else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    o: ""
    i: ""
    z: ""
    r: ""
    q: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}