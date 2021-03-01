class: CommandLineTool
id: obprobe.cwl
inputs:
- id: in_step_size
  doc: step size
  type: long?
  inputBinding:
    prefix: -s
- id: in_padding
  doc: padding
  type: string?
  inputBinding:
    prefix: -p
- id: in_hydroxyl_hydrogen_hbd
  doc: 0.4      hydroxyl hydrogen (HBD)
  type: long
  inputBinding:
    position: 0
- id: in_phenyl_carbon_hydrophobic
  doc: 0.0      phenyl carbon (hydrophobic)
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- obprobe
