class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/roary2fripan.py.cwl
inputs:
- id: input
  doc: Specify Roary output (default = "gene_presence_absence.csv")
  type: File
  inputBinding:
    prefix: --input
- id: prefix
  doc: Specify output prefix
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- roary2fripan.py
