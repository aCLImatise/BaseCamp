class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chipseq_greylist.cwl
inputs:
- id: cut_off
  doc: ''
  type: string
  inputBinding:
    prefix: --cutoff
- id: bootstraps
  doc: ''
  type: string
  inputBinding:
    prefix: --bootstraps
outputs: []
cwlVersion: v1.1
baseCommand:
- chipseq-greylist
