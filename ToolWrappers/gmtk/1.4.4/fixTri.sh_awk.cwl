class: CommandLineTool
id: fixTri.sh_awk.cwl
inputs:
- id: in_awk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tri_file
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
- fixTri.sh
- awk
