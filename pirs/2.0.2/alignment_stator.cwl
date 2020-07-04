class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/alignment_stator.cwl
inputs:
- id: pause_batch_runsm
  doc: "pause for batch runs\e[32;1m"
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- alignment_stator
