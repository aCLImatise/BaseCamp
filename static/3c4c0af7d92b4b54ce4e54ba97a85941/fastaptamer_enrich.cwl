class: CommandLineTool
id: fastaptamer_enrich.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_z
  doc: ''
  type: File?
  inputBinding:
    prefix: -z
- id: in_y
  doc: ''
  type: File?
  inputBinding:
    prefix: -y
- id: in_x
  doc: ''
  type: File?
  inputBinding:
    prefix: -x
- id: in_fast_aptamer_cluster_dot
  doc: '[-o OUTFILE]    = Plain text output file with tab separated values. REQUIRED'
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
- fastaptamer_enrich
