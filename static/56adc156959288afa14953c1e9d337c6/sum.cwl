class: CommandLineTool
id: sum.cwl
inputs:
- id: in_use_algorithm_use
  doc: use BSD sum algorithm, use 1K blocks
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_sysv
  doc: use System V sum algorithm, use 512 bytes blocks
  type: boolean?
  inputBinding:
    prefix: --sysv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sum
