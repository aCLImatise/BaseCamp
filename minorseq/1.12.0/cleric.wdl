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
      ~{true="--aln" false="" aln} \
      ~{true="--emit-tool-contract" false="" emit_tool_contract} \
      ~{true="--resolved-tool-contract" false="" resolved_tool_contract}
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
}