class: CommandLineTool
id: poretools_squiggle.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_save_as
  doc: Save the squiggle plot to a file.
  type: File
  inputBinding:
    prefix: --saveas
- id: in_num_facets
  doc: "The number of plot facets (sub-plots). More is better\nfor long reads. (def=6)"
  type: long
  inputBinding:
    prefix: --num-facets
- id: in_theme_bw
  doc: Use a black and white theme.
  type: boolean
  inputBinding:
    prefix: --theme-bw
- id: in_files
  doc: The input FAST5 files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- poretools
- squiggle
