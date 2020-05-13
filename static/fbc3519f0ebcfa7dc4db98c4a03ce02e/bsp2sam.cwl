class: CommandLineTool
id: bsp2sam.py.cwl
inputs:
- id: bs_map_mapping_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out
  doc: output file name. (required)
  type: File
  inputBinding:
    prefix: --out
- id: ref
  doc: reference genome fasta file. (required)
  type: File
  inputBinding:
    prefix: --ref
- id: quiet
  doc: don't print progress on stderr.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- bsp2sam.py
