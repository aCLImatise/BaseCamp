class: CommandLineTool
id: ../../../contigOverlaps.cwl
inputs:
- id: percent_identity
  doc: 'arg  The minimum end-to-end % identity of qualifying reads (default: 97)'
  type: boolean
  inputBinding:
    prefix: --percentIdentity
- id: first_assembly_bams_dot_fof_n
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: second_assembly_bams_dot_fof_n
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- contigOverlaps
