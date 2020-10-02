class: CommandLineTool
id: assembly_scan.cwl
inputs:
- id: in_assembly_summary_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_assembly
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- assembly-scan
