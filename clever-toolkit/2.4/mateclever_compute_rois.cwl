class: CommandLineTool
id: mateclever_compute_rois.cwl
inputs:
- id: d
  doc: 'Distance from deletion breakpoints to be included (default: 750).'
  type: string
  inputBinding:
    prefix: -d
- id: m
  doc: 'Maximum deletion length to be considered (default: none).'
  type: long
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- mateclever-compute-rois
