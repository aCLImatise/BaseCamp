class: CommandLineTool
id: paraNodeStatus.cwl
inputs:
- id: in_retries
  doc: "Number of retries to get in touch with machine.\nThe first retry is after\
    \ 1/100th of a second.\nEach retry after that takes twice as long up to a maximum\n\
    of 1 second per retry.  Default is 7 retries and takes\nabout a second."
  type: long?
  inputBinding:
    prefix: -retries
- id: in_long
  doc: List details of current and recent jobs.
  type: boolean?
  inputBinding:
    prefix: -long
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- paraNodeStatus
