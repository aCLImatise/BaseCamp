class: CommandLineTool
id: get_gffs_from_list.py.cwl
inputs:
- id: gff_filename
  doc: Input gff filename to extract sequences from
  type: string
  inputBinding:
    position: 0
- id: list_filename
  doc: List of sequence IDs to extract
  type: string
  inputBinding:
    position: 1
- id: partial
  doc: OK if seq IDs only match the beginning
  type: boolean
  inputBinding:
    prefix: --partial
outputs: []
cwlVersion: v1.1
baseCommand:
- get_gffs_from_list.py
