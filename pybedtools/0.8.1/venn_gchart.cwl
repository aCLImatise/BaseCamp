class: CommandLineTool
id: venn_gchart.py.cwl
inputs:
- id: a
  doc: File to use for the left-most circle
  type: string
  inputBinding:
    prefix: -a
- id: b
  doc: File to use for the right-most circle
  type: string
  inputBinding:
    prefix: -b
- id: c
  doc: File to use for the bottom circle
  type: string
  inputBinding:
    prefix: -c
- id: colors
  doc: Optional comma-separated list of hex colors for circles a, b, and c. E.g. 00FF00,FF0000,0000FF
  type: string
  inputBinding:
    prefix: --colors
- id: labels
  doc: Optional comma-separated list of labels for a, b, and c
  type: string
  inputBinding:
    prefix: --labels
- id: size
  doc: Optional size of PNG, in pixels. Default is "300x300"
  type: long
  inputBinding:
    prefix: --size
- id: o
  doc: Output file to save as, in PNG format
  type: string
  inputBinding:
    prefix: -o
- id: test
  doc: run test, overriding all other options.
  type: boolean
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- venn_gchart.py
