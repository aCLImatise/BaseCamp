class: CommandLineTool
id: roary2fripan.py.cwl
inputs:
- id: in_input
  doc: Specify Roary output (default = "gene_presence_absence.csv")
  type: File?
  inputBinding:
    prefix: --input
- id: in_prefix
  doc: Specify output prefix
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- roary2fripan.py
