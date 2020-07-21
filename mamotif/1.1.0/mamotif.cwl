class: CommandLineTool
id: ../../../mamotif.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: command
  doc: run          Run complete workflow (MAnorm + MotifScan + Integration). integrate    Run
    the integration module with MAnorm and MotifScan results.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mamotif
