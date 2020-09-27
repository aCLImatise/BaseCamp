class: CommandLineTool
id: dexqv.cwl
inputs:
- id: in_v_kl
  doc: ''
  type: boolean
  inputBinding:
    prefix: -vkl
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dexqv
