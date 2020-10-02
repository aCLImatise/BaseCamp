class: CommandLineTool
id: otu_condense.py.cwl
inputs:
- id: in_p
  doc: ''
  type: File
  inputBinding:
    prefix: -p
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_p
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_p)
cwlVersion: v1.1
baseCommand:
- otu_condense.py
