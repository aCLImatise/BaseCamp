class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hmmer2filtered_best.py.cwl
inputs:
- id: out_excl_f
  doc: domain hits filtered due to the applied thresholds
  type: string
  inputBinding:
    prefix: --out_excl_f
- id: out_filt_f
  doc: hmmer tab delimited file with hits removed according to the thresholds
  type: string
  inputBinding:
    prefix: --out_filt_f
- id: parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hmmer
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: var_5
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: generated
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: filtered
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: best
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: var_10
  doc: ''
  type: File
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmer2filtered_best.py
