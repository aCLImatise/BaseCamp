class: CommandLineTool
id: qacAgpLift_scaffoldToChrom.agp_chrom.qac.cwl
inputs:
- id: scaffolds_qac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom_qac
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- qacAgpLift
- scaffoldToChrom.agp
- chrom.qac
