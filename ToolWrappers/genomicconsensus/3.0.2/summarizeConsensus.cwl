class: CommandLineTool
id: summarizeConsensus.cwl
inputs:
- id: in_variants_gff
  doc: "Input variants.gff or variants.gff.gz filename\n(default: None)"
  type: File?
  inputBinding:
    prefix: --variantsGff
- id: in_output
  doc: 'Output alignment_summary.gff filename (default: None)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_resolved_tool_contract
  doc: "Run Tool directly from a PacBio Resolved tool contract\n(default: None)"
  type: string?
  inputBinding:
    prefix: --resolved-tool-contract
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output alignment_summary.gff filename (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- summarizeConsensus
