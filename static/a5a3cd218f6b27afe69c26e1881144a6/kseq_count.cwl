class: CommandLineTool
id: kseq_count.cwl
inputs:
- id: in_a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kseq_count
