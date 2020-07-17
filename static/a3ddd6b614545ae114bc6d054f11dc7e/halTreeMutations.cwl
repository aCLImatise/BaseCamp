class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/halTreeMutations.py.cwl
inputs:
- id: bed_name
  doc: ''
  type: string
  inputBinding:
    prefix: --bedName
- id: root
  doc: ''
  type: string
  inputBinding:
    prefix: --root
- id: do_snps
  doc: ''
  type: boolean
  inputBinding:
    prefix: --doSnps
- id: hal
  doc: input hal
  type: string
  inputBinding:
    position: 0
- id: outdir
  doc: output dir
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- halTreeMutations.py
