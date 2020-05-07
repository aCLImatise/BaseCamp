class: CommandLineTool
id: poretools_squiggle.cwl
inputs:
- id: files
  doc: The input FAST5 files.
  type: File
  inputBinding:
    position: 0
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: save_as
  doc: Save the squiggle plot to a file.
  type: string
  inputBinding:
    prefix: --saveas
- id: num_facets
  doc: The number of plot facets (sub-plots). More is better for long reads. (def=6)
  type: long
  inputBinding:
    prefix: --num-facets
- id: theme_bw
  doc: Use a black and white theme.
  type: boolean
  inputBinding:
    prefix: --theme-bw
outputs: []
cwlVersion: v1.1
baseCommand:
- poretools
- squiggle
