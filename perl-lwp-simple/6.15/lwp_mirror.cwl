class: CommandLineTool
id: lwp_mirror.cwl
inputs:
- id: v
  doc: print version number of program
  type: boolean
  inputBinding:
    prefix: -v
- id: t
  doc: Set timeout value
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- lwp-mirror
