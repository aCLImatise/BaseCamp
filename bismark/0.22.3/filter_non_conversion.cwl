class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/filter_non_conversion.cwl
inputs:
- id: bismark
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_non_conversion
