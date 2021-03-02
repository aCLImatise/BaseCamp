class: CommandLineTool
id: htsbox_bcfidx.cwl
inputs:
- id: in_s
  doc: ''
  type: long?
  inputBinding:
    prefix: -s
- id: in_bam_idx
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
- htsbox
- bcfidx
