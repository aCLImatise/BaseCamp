class: CommandLineTool
id: contigOverlaps.cwl
inputs:
- id: percent_identity
  doc: 'arg  The minimum end-to-end % identity of qualifying reads (default: 97)'
  type: boolean
  inputBinding:
    prefix: --percentIdentity
outputs: []
cwlVersion: v1.1
baseCommand:
- contigOverlaps
