version 1.0

task FlyeSamtoolsCalmd {
  input {
    File? reference
    Int? threads
    Boolean? eu_bra_esq
    String sam_tools
    String calm_d
    String aln_dot_bam
    String ref_dot_fast_a
  }
  command <<<
    flye-samtools calmd \
      ~{sam_tools} \
      ~{calm_d} \
      ~{aln_dot_bam} \
      ~{ref_dot_fast_a} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="-eubrAESQ" false="" eu_bra_esq}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    eu_bra_esq: ""
    sam_tools: ""
    calm_d: ""
    aln_dot_bam: ""
    ref_dot_fast_a: ""
  }
}