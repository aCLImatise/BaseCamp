class: CommandLineTool
id: mykrobe_predict.cwl
inputs:
- id: in_keep_tmp
  doc: ''
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: in_tmp
  doc: ''
  type: string
  inputBinding:
    prefix: --tmp
- id: in_k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: in_sample
  doc: sample id
  type: string
  inputBinding:
    position: 0
- id: in_species
  doc: species
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mykrobe
- predict
