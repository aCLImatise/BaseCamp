class: CommandLineTool
id: contigOverlaps.cwl
inputs:
- id: in_percent_identity
  doc: 'arg  The minimum end-to-end % identity of qualifying reads (default: 97)'
  type: boolean
  inputBinding:
    prefix: --percentIdentity
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_first_assembly_bams_dot_fof_n
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_second_assembly_bams_dot_fof_n
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- contigOverlaps
