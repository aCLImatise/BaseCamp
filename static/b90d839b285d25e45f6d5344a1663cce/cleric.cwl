class: CommandLineTool
id: cleric.cwl
inputs:
- id: bam
  doc: Source BAM
  type: string
  inputBinding:
    position: 0
- id: ref
  doc: Reference Fasta
  type: string
  inputBinding:
    position: 1
- id: target
  doc: Target Fasta
  type: string
  inputBinding:
    position: 2
- id: output
  doc: Output BAM
  type: string
  inputBinding:
    position: 3
- id: aln
  doc: Pairwise alignment of reference to target
  type: boolean
  inputBinding:
    prefix: --aln
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
- cleric
