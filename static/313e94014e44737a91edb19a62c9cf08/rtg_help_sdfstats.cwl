class: CommandLineTool
id: rtg_help_sdfstats.cwl
inputs:
- id: lengths
  doc: print out the name and length of each sequence. (Not recommended for read sets)
  type: boolean
  inputBinding:
    prefix: --lengths
- id: position
  doc: display info about unknown bases (Ns) by read position
  type: string
  inputBinding:
    prefix: --position
- id: quality
  doc: display mean of quality
  type: boolean
  inputBinding:
    prefix: --quality
- id: sex
  doc: display reference sequence list for the given sex, if defined. Allowed values
    are [male, female, either]. May be specified 0 or more times, or as a comma separated
    list
  type: string
  inputBinding:
    prefix: --sex
- id: taxonomy
  doc: information about taxonomy
  type: string
  inputBinding:
    prefix: --taxonomy
- id: unknowns
  doc: info about unknown bases (Ns)
  type: string
  inputBinding:
    prefix: --unknowns
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- sdfstats
