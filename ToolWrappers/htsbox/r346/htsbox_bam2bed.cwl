class: CommandLineTool
id: htsbox_bam2bed.cwl
inputs:
- id: in_se
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Se
- id: in_bam_two_bed
  doc: ''
  type: long
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
cwlVersion: v1.1
baseCommand:
- htsbox
- bam2bed
