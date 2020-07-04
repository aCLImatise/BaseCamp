class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_filter_sites.cwl
inputs:
- id: padding_bp
  doc: bp added to the annotation start and ends
  type: string
  inputBinding:
    prefix: --padding_bp
- id: filter_features
  doc: comma separated list of gff features
  type: string[]
  inputBinding:
    prefix: --filter_features
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-filter-sites
