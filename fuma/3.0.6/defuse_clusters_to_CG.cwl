class: CommandLineTool
id: ../../../defuse_clusters_to_CG.cwl
inputs:
- id: gene_annotation
  doc: GTF-file used by defuse
  type: string
  inputBinding:
    prefix: --gene-annotation
- id: output
  doc: output filename; '-' for stdout
  type: string
  inputBinding:
    prefix: --output
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: input
  doc: Defuse cluster file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- defuse-clusters-to-CG
