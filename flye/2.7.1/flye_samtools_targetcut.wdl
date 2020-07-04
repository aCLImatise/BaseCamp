version 1.0

task FlyeSamtoolsTargetcut {
  input {
    File? reference
    Int? q
    String? i
    String? zero
    String? one
    String? two
    String sam_tools
    String target_cut
    String in_dot_bam
  }
  command <<<
    flye-samtools targetcut \
      ~{sam_tools} \
      ~{target_cut} \
      ~{in_dot_bam} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(q) then ("-Q " +  '"' + q + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(zero) then ("-0 " +  '"' + zero + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    q: ""
    i: ""
    zero: ""
    one: ""
    two: ""
    sam_tools: ""
    target_cut: ""
    in_dot_bam: ""
  }
}