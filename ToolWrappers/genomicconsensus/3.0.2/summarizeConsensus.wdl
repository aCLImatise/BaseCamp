version 1.0

task SummarizeConsensus {
  input {
    File? variants_gff
    File? output_alignmentsummarygff_filename
    String? resolved_tool_contract
  }
  command <<<
    summarizeConsensus \
      ~{if defined(variants_gff) then ("--variantsGff " +  '"' + variants_gff + '"') else ""} \
      ~{if defined(output_alignmentsummarygff_filename) then ("--output " +  '"' + output_alignmentsummarygff_filename + '"') else ""} \
      ~{if defined(resolved_tool_contract) then ("--resolved-tool-contract " +  '"' + resolved_tool_contract + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    variants_gff: "Input variants.gff or variants.gff.gz filename\\n(default: None)"
    output_alignmentsummarygff_filename: "Output alignment_summary.gff filename (default: None)"
    resolved_tool_contract: "Run Tool directly from a PacBio Resolved tool contract\\n(default: None)"
  }
  output {
    File out_stdout = stdout()
    File out_output_alignmentsummarygff_filename = "${in_output_alignmentsummarygff_filename}"
  }
}