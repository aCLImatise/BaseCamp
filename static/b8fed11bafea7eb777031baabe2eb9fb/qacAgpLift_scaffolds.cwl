class: CommandLineTool
id: qacAgpLift_scaffolds.qac.cwl
inputs:
- id: scaffold_to_chroma_gp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: scaffolds_qac
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: chrom_qac
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- qacAgpLift
- scaffolds.qac
