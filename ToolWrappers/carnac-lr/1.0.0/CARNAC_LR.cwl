class: CommandLineTool
id: CARNAC_LR.cwl
inputs:
- id: in_mandatory
  doc: mandatory
  type: string?
  inputBinding:
    prefix: -f
- id: in_number_threads_default
  doc: the number of threads (default 2)
  type: long?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- CARNAC-LR
