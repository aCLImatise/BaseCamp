class: CommandLineTool
id: renano.cwl
inputs:
- id: in_use_mode_default
  doc: To use MAX COMPRESION MODE. Default is FAST MODE.
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_base_call_sequence
  doc: Base call sequence context length. Default is 7 (max 13).
  type: long?
  inputBinding:
    prefix: -k
- id: in_length_dna_neighborhood
  doc: Length of the DNA neighborhood sequence. Default is 6.
  type: long?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/renano:1.0--h9a82719_0
cwlVersion: v1.1
baseCommand:
- renano
