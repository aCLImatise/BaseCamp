version 1.0

task FlyeSamtoolsMarkdup {
  input {
    File? reference
    Int? threads
    String sam_tools
    String mark_dup
    String input_dot_bam
    String output_dot_bam
  }
  command <<<
    flye-samtools markdup \
      ~{sam_tools} \
      ~{mark_dup} \
      ~{input_dot_bam} \
      ~{output_dot_bam} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    sam_tools: ""
    mark_dup: ""
    input_dot_bam: ""
    output_dot_bam: ""
  }
}