class: CommandLineTool
id: vep_install.cwl
inputs:
- id: ensembl
  doc: ': 99.d3e7d31'
  type: string
  inputBinding:
    position: 0
- id: ensembl_func_gen
  doc: ': 99.0832337'
  type: string
  inputBinding:
    position: 1
- id: ensembl_io
  doc: ': 99.441b05b'
  type: string
  inputBinding:
    position: 2
- id: ensembl_variation
  doc: ': 99.642e1cd'
  type: string
  inputBinding:
    position: 3
- id: ensembl_vep
  doc: ': 99.2'
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- vep_install
