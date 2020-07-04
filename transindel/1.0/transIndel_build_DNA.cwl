class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/transIndel_build_DNA.py.cwl
inputs:
- id: mapq_cut_off
  doc: :minimal MapQ in SAM for support SV event, default 15
  type: boolean
  inputBinding:
    prefix: --mapq_cutoff
- id: max_del_length
  doc: :maximum deletion length to be detected (10e6)
  type: boolean
  inputBinding:
    prefix: --max_del_length
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: opts
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- transIndel_build_DNA.py
