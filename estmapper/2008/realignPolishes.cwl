class: CommandLineTool
id: realignPolishes.cwl
inputs:
- id: q
  doc: ": Don't actually do the work, just count the statistics"
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- realignPolishes
