class: CommandLineTool
id: mimodd_snap_batch.cwl
inputs:
- id: s
  doc: '"COMMAND" ["COMMAND" ...] one or more completely specified command line calls
    to the snap tool (use "" to enclose individual lines)'
  type: boolean
  inputBinding:
    prefix: -s
- id: f
  doc: an input file of completely specified command line calls to the snap tool
  type: File
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- snap-batch
