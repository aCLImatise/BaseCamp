class: CommandLineTool
id: plastome_arch_info.py.cwl
inputs:
- id: o
  doc: output file.
  type: string
  inputBinding:
    prefix: -o
- id: r
  doc: 'The minimum repeat length treated as the IR region of plastome. Default: [5000]'
  type: long
  inputBinding:
    prefix: -r
- id: v
  doc: 'Valid bases. Default: ATGCRMYKHBDVatgcrmykhbdv'
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- plastome_arch_info.py
