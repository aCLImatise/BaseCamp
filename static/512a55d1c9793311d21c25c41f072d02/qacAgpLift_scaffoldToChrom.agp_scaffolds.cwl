class: CommandLineTool
id: qacAgpLift_scaffoldToChrom.agp_scaffolds.qac.cwl
inputs:
- id: chrom_qac
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- qacAgpLift
- scaffoldToChrom.agp
- scaffolds.qac
