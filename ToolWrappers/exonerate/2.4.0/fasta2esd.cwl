class: CommandLineTool
id: ../../../fasta2esd.cwl
inputs:
- id: in_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help
- id: in_fast_a
  doc: ''
  type: File
  inputBinding:
    prefix: --fasta
- id: in_output
  doc: ''
  type: File
  inputBinding:
    prefix: --output
- id: in_alphabet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --alphabet
- id: in_soft_mask
  doc: ''
  type: boolean
  inputBinding:
    prefix: --softmask
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasta2esd
