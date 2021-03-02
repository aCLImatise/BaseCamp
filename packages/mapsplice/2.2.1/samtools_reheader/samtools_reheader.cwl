class: CommandLineTool
id: samtools_reheader.cwl
inputs:
- id: in_in_dot_header_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_bam
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
- samtools
- reheader
