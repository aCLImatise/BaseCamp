class: CommandLineTool
id: getSeq.cwl
inputs:
- id: in_rc
  doc: output the reverse complement of the sequence
  type: boolean?
  inputBinding:
    prefix: --rc
- id: in_start
  doc: retrieve subsequence starting at position N (coordinates are 1-based)
  type: long?
  inputBinding:
    prefix: --start
- id: in_end
  doc: retrieve subsequence ending at position N (coordinates are 1-based)
  type: long?
  inputBinding:
    prefix: --end
- id: in_mysql
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- getSeq
