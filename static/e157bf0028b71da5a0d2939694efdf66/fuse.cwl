class: CommandLineTool
id: fuse.cwl
inputs:
- id: in_min_coverage
  doc: Minimal coverage to call a position. [50]
  type: boolean?
  inputBinding:
    prefix: --min-coverage
- id: in_emit_tool_contract
  doc: Emit tool contract.
  type: boolean?
  inputBinding:
    prefix: --emit-tool-contract
- id: in_resolved_tool_contract
  doc: Use args from resolved tool contract.
  type: boolean?
  inputBinding:
    prefix: --resolved-tool-contract
- id: in_source
  doc: Source BAM or DataSet XML file.
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output fasta file.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fuse
