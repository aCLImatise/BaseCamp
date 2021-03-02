class: CommandLineTool
id: vsnp_remove_from_analysis.py.cwl
inputs:
- id: in_codes
  doc: "Excel file containing samples to remove from analysis\nColumn 1: to match\
    \ sample name minus extension. No\nheader allowed"
  type: File?
  inputBinding:
    prefix: --codes
- id: in_cwd
  doc: 'Optional: path to VCF files'
  type: Directory?
  inputBinding:
    prefix: --cwd
- id: in_extension
  doc: File extension type to be renamed
  type: File?
  inputBinding:
    prefix: --extension
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
- vsnp_remove_from_analysis.py
