version 1.0

task FlyeSamtoolsPhase {
  input {
    File? reference
    String sam_tools
    String phase
    String in_dot_bam
  }
  command <<<
    flye-samtools phase \
      ~{sam_tools} \
      ~{phase} \
      ~{in_dot_bam} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    sam_tools: ""
    phase: ""
    in_dot_bam: ""
  }
}