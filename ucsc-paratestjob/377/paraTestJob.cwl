class: CommandLineTool
id: paraTestJob.cwl
inputs:
- id: count
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: crash
  doc: Try to write to NULL when done.
  type: boolean
  inputBinding:
    prefix: -crash
- id: err
  doc: Return -1 error code when done.
  type: boolean
  inputBinding:
    prefix: -err
- id: output
  doc: Make some output in file as well.
  type: File
  inputBinding:
    prefix: -output
- id: heavy
  doc: 'Make output heavy: n extra lumberjack lines.'
  type: string
  inputBinding:
    prefix: -heavy
- id: input
  doc: Make it read in a file too.
  type: File
  inputBinding:
    prefix: -input
- id: sleep
  doc: Sleep for N seconds.
  type: string
  inputBinding:
    prefix: -sleep
outputs: []
cwlVersion: v1.1
baseCommand:
- paraTestJob
