version 1.0

task FlyeSamtoolsCollate {
  input {
    File? reference
    Int? threads
    Boolean? ou
    String? o
    String? n
    String? l
    String sam_tools
    String collate
    String in_dot_bam
    String? prefix
  }
  command <<<
    flye-samtools collate \
      ~{sam_tools} \
      ~{collate} \
      ~{in_dot_bam} \
      ~{prefix} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="-Ou" false="" ou} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    ou: ""
    o: ""
    n: ""
    l: ""
    sam_tools: ""
    collate: ""
    in_dot_bam: ""
    prefix: ""
  }
}