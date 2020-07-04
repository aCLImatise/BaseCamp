version 1.0

task FlyeSamtoolsTview {
  input {
    File? reference
    String sam_tools
    String t_view
    String aln_dot_bam
    String? ref_dot_fast_a
  }
  command <<<
    flye-samtools tview \
      ~{sam_tools} \
      ~{t_view} \
      ~{aln_dot_bam} \
      ~{ref_dot_fast_a} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    sam_tools: ""
    t_view: ""
    aln_dot_bam: ""
    ref_dot_fast_a: ""
  }
}