class: CommandLineTool
id: bedtk_sub.cwl
inputs:
- id: in_minu_end_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sub_tra_hend_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bedtk:0.0.r25.dirty--hed695b0_0
cwlVersion: v1.1
baseCommand:
- bedtk
- sub
