class: CommandLineTool
id: trimFastqByQVWindow.cwl
inputs:
- id: in_fast_a_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_zero_six_zero_phred_qual_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_fast_a_output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_qual_output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- trimFastqByQVWindow
