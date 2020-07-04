class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/distruct.py.cwl
inputs:
- id: number_of_populations
  doc: (number of populations)
  type: long
  inputBinding:
    prefix: -K
- id: input
  doc: (/path/to/input/file; same as output flag passed to structure.py)
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: (/path/to/output/file)
  type: File
  inputBinding:
    prefix: --output
- id: popfile
  doc: (file with known categorical labels; optional)
  type: File
  inputBinding:
    prefix: --popfile
- id: title
  doc: (a title for the figure; optional)
  type: string
  inputBinding:
    prefix: --title
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- distruct.py
