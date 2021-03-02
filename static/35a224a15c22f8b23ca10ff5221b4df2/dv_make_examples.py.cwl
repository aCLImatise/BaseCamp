class: CommandLineTool
id: dv_make_examples.py.cwl
inputs:
- id: in_reads
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --reads
- id: in_ref
  doc: ''
  type: string?
  inputBinding:
    prefix: --ref
- id: in_sample
  doc: ''
  type: string?
  inputBinding:
    prefix: --sample
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
- dv_make_examples.py
