class: CommandLineTool
id: modify_design_file.py.cwl
inputs:
- id: input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: design
  doc: Design file.
  type: string
  inputBinding:
    prefix: --design
- id: uniqid
  doc: Name of the column with uniquedentifiers.
  type: string
  inputBinding:
    prefix: --uniqID
- id: group
  doc: Name of column in design filewith Group/treatment information.
  type: string
  inputBinding:
    prefix: --group
- id: drops
  doc: Name of the groups in yourgroup/treatment column that you want to remove from
    the design file.
  type: string
  inputBinding:
    prefix: --drops
- id: out
  doc: Output path for the new design file
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- modify_design_file.py
