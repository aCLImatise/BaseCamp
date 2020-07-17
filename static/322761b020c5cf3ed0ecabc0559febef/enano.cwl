class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/enano.cwl
inputs:
- id: use_compresion_default
  doc: To use MAX COMPRESION MODE. Default is FAST MODE.
  type: boolean
  inputBinding:
    prefix: -c
- id: base_sequence_context
  doc: Base sequence context length. Default is 7 (max 13).
  type: long
  inputBinding:
    prefix: -k
- id: length_dna_sequence
  doc: Length of the DNA sequence context. Default is 6.
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- enano
