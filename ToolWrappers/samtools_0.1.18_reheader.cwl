class: CommandLineTool
id: samtools_0.1.18_reheader.cwl
inputs:
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_re_header
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_header_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- samtools_0.1.18
- reheader
