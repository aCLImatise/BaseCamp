class: CommandLineTool
id: bedtk_isec.cwl
inputs:
- id: in_list_specify_order
  doc: list of contig IDs to specify the output order []
  type: File?
  inputBinding:
    prefix: -s
- id: in_a_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_b_dot_bed
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
- isec
