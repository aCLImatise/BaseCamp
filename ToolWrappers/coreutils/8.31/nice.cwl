class: CommandLineTool
id: nice.cwl
inputs:
- id: in_most_favorable_process
  doc: (most favorable to the process) to 19 (least favorable to the process).
  type: boolean?
  inputBinding:
    prefix: '-20'
- id: in_adjustment
  doc: add integer N to the niceness (default 10)
  type: long?
  inputBinding:
    prefix: --adjustment
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nice
