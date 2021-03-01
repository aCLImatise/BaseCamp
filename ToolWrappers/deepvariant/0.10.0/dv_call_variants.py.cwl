class: CommandLineTool
id: dv_call_variants.py.cwl
inputs:
- id: in_examples
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --examples
- id: in_outfile
  doc: ''
  type: string?
  inputBinding:
    prefix: --outfile
- id: in_cores
  doc: ''
  type: string?
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dv_call_variants.py
