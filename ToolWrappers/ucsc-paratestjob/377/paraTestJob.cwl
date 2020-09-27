class: CommandLineTool
id: paraTestJob.cwl
inputs:
- id: in_crash
  doc: Try to write to NULL when done.
  type: boolean
  inputBinding:
    prefix: -crash
- id: in_err
  doc: Return -1 error code when done.
  type: boolean
  inputBinding:
    prefix: -err
- id: in_output
  doc: Make some output in file as well.
  type: File
  inputBinding:
    prefix: -output
- id: in_heavy
  doc: 'Make output heavy: n extra lumberjack lines.'
  type: string
  inputBinding:
    prefix: -heavy
- id: in_input
  doc: Make it read in a file too.
  type: File
  inputBinding:
    prefix: -input
- id: in_sleep
  doc: Sleep for N seconds.
  type: string
  inputBinding:
    prefix: -sleep
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Make some output in file as well.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- paraTestJob
