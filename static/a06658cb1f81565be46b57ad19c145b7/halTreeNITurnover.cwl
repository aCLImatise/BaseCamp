class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/halTreeNITurnover.py.cwl
inputs:
- id: conserved_bed_name
  doc: 'Name function for output bed files where genome name is specifed as %s (default:
    %%s_cons.bed)'
  type: string
  inputBinding:
    prefix: --conservedBedName
- id: root
  doc: 'root (default: None)'
  type: string
  inputBinding:
    prefix: --root
- id: hal
  doc: input hal
  type: string
  inputBinding:
    position: 0
- id: workdir
  doc: working dir for all bed files
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- halTreeNITurnover.py
