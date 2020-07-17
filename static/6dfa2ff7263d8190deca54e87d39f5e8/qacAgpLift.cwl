class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/qacAgpLift.cwl
inputs:
- id: scaffold_to_chrom_dot_agp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: scaffolds_dot_qac
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: chrom_dot_qac
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- qacAgpLift
