class: CommandLineTool
id: mb_filter_sites.cwl
inputs:
- id: par_clip_sites
  doc: path to parclip sites
  type: string
  inputBinding:
    position: 0
- id: filtered_file
  doc: path to filtered output file
  type: string
  inputBinding:
    position: 1
- id: gff_file
  doc: path to gff annotation file
  type: string
  inputBinding:
    position: 2
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
