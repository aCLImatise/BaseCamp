class: CommandLineTool
id: vsnp_chromosome_reference.py.cwl
inputs:
- id: in_cwd
  doc: 'Optional: path to VCF files'
  type: Directory?
  inputBinding:
    prefix: --cwd
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vsnp_chromosome_reference.py
