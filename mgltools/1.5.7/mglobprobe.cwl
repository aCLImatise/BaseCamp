class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mglobprobe.cwl
inputs:
- id: step_size
  doc: step size
  type: string
  inputBinding:
    prefix: -s
- id: padding
  doc: padding
  type: string
  inputBinding:
    prefix: -p
- id: carbonyl_oxygen_hba
  doc: -0.57     carbonyl oxygen (HBA)
  type: string
  inputBinding:
    position: 0
- id: hydroxyl_hydrogen_hbd
  doc: 0.4      hydroxyl hydrogen (HBD)
  type: string
  inputBinding:
    position: 1
- id: _phenyl_carbon
  doc: 0.0      phenyl carbon (hydrophobic)
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mglobprobe
