class: CommandLineTool
id: motif_fit_D.cwl
inputs:
- id: eps
  doc: 'The maximum distance between two samples for them to be considered as in the
    same neighborhood. (default: 0.2)'
  type: string
  inputBinding:
    prefix: --eps
- id: min_samples
  doc: 'The number of samples (or total weight) in a neighborhood for a point to be
    considered as a core point. This includes the point itself. (default: 3)'
  type: long
  inputBinding:
    prefix: --min-samples
outputs: []
cwlVersion: v1.1
baseCommand:
- motif
- fit
- D
