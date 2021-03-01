class: CommandLineTool
id: alignment_stator.cwl
inputs:
- id: in_pause_batch_runsm
  doc: "pause for batch runs\e[32;1m"
  type: long?
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- alignment_stator
