version 1.0

task Cleric {
  input {
    Boolean? aln
    Boolean? emit_tool_contract
    Boolean? resolved_tool_contract
    String bam
    String ref
    String target
    String output_bam
  }
  command <<<
    cleric \
      ~{bam} \
      ~{ref} \
      ~{target} \
      ~{output_bam} \
      ~{if (aln) then "--aln" else ""} \
      ~{if (emit_tool_contract) then "--emit-tool-contract" else ""} \
      ~{if (resolved_tool_contract) then "--resolved-tool-contract" else ""}
  >>>
  parameter_meta {
    aln: "Pairwise alignment of reference to target"
    emit_tool_contract: "Emit tool contract."
    resolved_tool_contract: "Use args from resolved tool contract."
    bam: "Source BAM"
    ref: "Reference Fasta"
    target: "Target Fasta"
    output_bam: "Output BAM"
  }
  output {
    File out_stdout = stdout()
  }
}