class: CommandLineTool
id: rsem_bam2readdepth.cwl
inputs:
- id: in_sorted_bam_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_read_depth_output
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
- rsem-bam2readdepth
