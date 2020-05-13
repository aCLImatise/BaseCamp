class: CommandLineTool
id: bamQC.py.cwl
inputs:
- id: bam
  doc: ''
  type: string
  inputBinding:
    prefix: -bam
- id: max_l
  doc: ''
  type: long
  inputBinding:
    prefix: -maxl
outputs: []
cwlVersion: v1.1
baseCommand:
- bamQC.py
