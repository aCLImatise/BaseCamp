class: CommandLineTool
id: rtg_sdfstats.cwl
inputs:
- id: in_lengths
  doc: "print out the name and length of each sequence. (Not\nrecommended for read\
    \ sets)"
  type: boolean
  inputBinding:
    prefix: --lengths
- id: in_position
  doc: display info about unknown bases (Ns) by read position
  type: string
  inputBinding:
    prefix: --position
- id: in_quality
  doc: display mean of quality
  type: boolean
  inputBinding:
    prefix: --quality
- id: in_sex
  doc: "display reference sequence list for the given sex, if defined.\nAllowed values\
    \ are [male, female, either]. May be specified 0\nor more times, or as a comma\
    \ separated list"
  type: long
  inputBinding:
    prefix: --sex
- id: in_taxonomy
  doc: information about taxonomy
  type: string
  inputBinding:
    prefix: --taxonomy
- id: in_unknowns
  doc: info about unknown bases (Ns)
  type: string
  inputBinding:
    prefix: --unknowns
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rtg
- sdfstats
