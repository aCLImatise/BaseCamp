class: CommandLineTool
id: write_strain_fasta.py_outbase.cwl
inputs:
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tau_star_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: et_as_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_base
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- write_strain_fasta.py
- outbase
