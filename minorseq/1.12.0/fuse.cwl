class: CommandLineTool
id: fuse.cwl
inputs:
- id: source
  doc: Source BAM or DataSet XML file.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output fasta file.
  type: string
  inputBinding:
    position: 1
- id: min_coverage
  doc: Minimal coverage to call a position. [50]
  type: boolean
  inputBinding:
    prefix: --min-coverage
- id: emit_tool_contract
  doc: Emit tool contract.
  type: boolean
  inputBinding:
    prefix: --emit-tool-contract
- id: resolved_tool_contract
  doc: Use args from resolved tool contract.
  type: boolean
  inputBinding:
    prefix: --resolved-tool-contract
outputs: []
cwlVersion: v1.1
baseCommand:
- fuse
