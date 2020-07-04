class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sonicparanoid_set_mmseqs2.cwl
inputs:
- id: mm_seqs_path
  doc: The path to the MMseqs2 binary file.
  type: string
  inputBinding:
    prefix: --mmseqs-path
- id: debug
  doc: Output debug information.
  type: boolean
  inputBinding:
    prefix: --debug
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- sonicparanoid-set-mmseqs2
