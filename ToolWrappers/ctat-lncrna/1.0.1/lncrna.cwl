class: CommandLineTool
id: lncrna.cwl
inputs:
- id: in_assembly
  doc: ''
  type: string
  inputBinding:
    prefix: --assembly
- id: in_bed_file
  doc: ''
  type: File
  inputBinding:
    prefix: --bedfile
- id: in_l_ncrna_discovery_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lncrna
