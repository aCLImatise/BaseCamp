class: CommandLineTool
id: maf_build_index.py.cwl
inputs:
- id: in_species
  doc: "only index the position of the block in the listed\nspecies\n"
  type: string?
  inputBinding:
    prefix: --species
- id: in_maf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_index_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- maf_build_index.py
