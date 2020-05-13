class: CommandLineTool
id: chromosomer_assemble_map.cwl
inputs:
- id: map
  doc: a fragment map file
  type: string
  inputBinding:
    position: 0
- id: fragment_fast_a
  doc: a FASTA file of fragment sequences to be assembled
  type: string
  inputBinding:
    position: 1
- id: output_fast_a
  doc: the output FASTA file of the assembled chromosome sequences
  type: string
  inputBinding:
    position: 2
- id: save_soft_mask
  doc: 'keep soft masking from the original fragment sequences (default: False)'
  type: boolean
  inputBinding:
    prefix: --save_soft_mask
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- assemble
- map
