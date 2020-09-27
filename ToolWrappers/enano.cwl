class: CommandLineTool
id: enano.cwl
inputs:
- id: in_use_compresion_default
  doc: To use MAX COMPRESION MODE. Default is FAST MODE.
  type: boolean
  inputBinding:
    prefix: -c
- id: in_base_sequence_context
  doc: Base sequence context length. Default is 7 (max 13).
  type: long
  inputBinding:
    prefix: -k
- id: in_length_dna_sequence
  doc: Length of the DNA sequence context. Default is 6.
  type: long
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- enano
