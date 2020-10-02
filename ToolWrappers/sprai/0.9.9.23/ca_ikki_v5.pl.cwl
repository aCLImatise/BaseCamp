class: CommandLineTool
id: ca_ikki_v5.pl.cwl
inputs:
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_as_mdot_spec
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_estimated_genome_size
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ca_ikki_v5.pl
