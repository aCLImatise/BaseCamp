class: CommandLineTool
id: fixTri.sh_AWK_PROGRAM.cwl
inputs:
- id: in_awk_program
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
hints: []
cwlVersion: v1.1
baseCommand:
- fixTri.sh
- AWK_PROGRAM
