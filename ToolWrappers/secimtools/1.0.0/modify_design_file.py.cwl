class: CommandLineTool
id: modify_design_file.py.cwl
inputs:
- id: in_input
  doc: Input dataset in wide format.
  type: string?
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File?
  inputBinding:
    prefix: --design
- id: in_uniqid
  doc: Name of the column with uniquedentifiers.
  type: string?
  inputBinding:
    prefix: --uniqID
- id: in_group
  doc: "Name of column in design filewith Group/treatment\ninformation."
  type: string?
  inputBinding:
    prefix: --group
- id: in_drops
  doc: "Name of the groups in yourgroup/treatment column that\nyou want to remove\
    \ from the design file."
  type: File?
  inputBinding:
    prefix: --drops
- id: in_out
  doc: Output path for the new design file
  type: File?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output path for the new design file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- modify_design_file.py
