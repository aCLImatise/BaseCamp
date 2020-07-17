version 1.0

task Mixdata {
  input {
    File? reference
    Int? threads
    String sam_tools
    String view
    String in_dot_bam
  }
  command <<<
    mixdata \
      ~{sam_tools} \
      ~{view} \
      ~{in_dot_bam} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    sam_tools: ""
    view: ""
    in_dot_bam: ""
  }
}