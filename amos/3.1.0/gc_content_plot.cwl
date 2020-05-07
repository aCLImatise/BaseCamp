class: CommandLineTool
id: gc_content_plot.cwl
inputs:
- id: no_tags
  doc: Do not print sequence tags.
  type: boolean
  inputBinding:
    prefix: --no-tags
- id: no_indices
  doc: Do not print the index of each GC window.  Ignored if --tabular is given.
  type: boolean
  inputBinding:
    prefix: --no-indices
outputs: []
cwlVersion: v1.1
baseCommand:
- gc-content-plot
