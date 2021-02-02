class: CommandLineTool
id: cleric.cwl
inputs:
- id: in_aln
  doc: Pairwise alignment of reference to target
  type: boolean
  inputBinding:
    prefix: --aln
- id: in_emit_tool_contract
  doc: Emit tool contract.
  type: boolean
  inputBinding:
    prefix: --emit-tool-contract
- id: in_resolved_tool_contract
  doc: Use args from resolved tool contract.
  type: boolean
  inputBinding:
    prefix: --resolved-tool-contract
- id: in_bam
  doc: Source BAM
  type: string
  inputBinding:
    position: 0
- id: in_ref
  doc: Reference Fasta
  type: string
  inputBinding:
    position: 1
- id: in_target
  doc: Target Fasta
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: Output BAM
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cleric
