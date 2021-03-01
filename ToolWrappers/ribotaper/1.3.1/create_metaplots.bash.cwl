class: CommandLineTool
id: create_metaplots.bash.cwl
inputs:
- id: in_ribo_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bed_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- create_metaplots.bash
