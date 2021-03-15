class: CommandLineTool
id: bedtk_cov.cwl
inputs:
- id: in_only_count_breadth
  doc: only count; no breadth of depth
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_containment_only
  doc: containment only
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_loaded_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_streamed_dot_bed
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
- cov
