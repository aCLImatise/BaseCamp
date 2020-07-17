class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedtools_nuc.cwl
inputs:
- id: fi
  doc: ''
  type: string
  inputBinding:
    prefix: -fi
- id: bed
  doc: ''
  type: string
  inputBinding:
    prefix: -bed
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- nuc
