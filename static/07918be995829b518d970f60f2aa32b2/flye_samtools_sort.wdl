version 1.0

task FlyeSamtoolsSort {
  input {
    File? reference
    Int? threads
    String sam_tools
    String sort
    String? options_dot_dot_dot
    String? in_dot_bam
  }
  command <<<
    flye-samtools sort \
      ~{sam_tools} \
      ~{sort} \
      ~{options_dot_dot_dot} \
      ~{in_dot_bam} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    sam_tools: ""
    sort: ""
    options_dot_dot_dot: ""
    in_dot_bam: ""
  }
}