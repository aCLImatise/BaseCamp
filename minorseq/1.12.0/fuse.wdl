version 1.0

task Fuse {
  input {
    Boolean? min_coverage
    Boolean? emit_tool_contract
    Boolean? resolved_tool_contract
    String source
    String output_fasta_file
  }
  command <<<
    fuse \
      ~{source} \
      ~{output_fasta_file} \
      ~{if (min_coverage) then "--min-coverage" else ""} \
      ~{if (emit_tool_contract) then "--emit-tool-contract" else ""} \
      ~{if (resolved_tool_contract) then "--resolved-tool-contract" else ""}
  >>>
  parameter_meta {
    min_coverage: "Minimal coverage to call a position. [50]"
    emit_tool_contract: "Emit tool contract."
    resolved_tool_contract: "Use args from resolved tool contract."
    source: "Source BAM or DataSet XML file."
    output_fasta_file: "Output fasta file."
  }
  output {
    File out_stdout = stdout()
  }
}