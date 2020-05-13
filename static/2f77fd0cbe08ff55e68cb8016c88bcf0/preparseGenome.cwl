class: CommandLineTool
id: preparseGenome.pl.cwl
inputs:
- id: window
  doc: <#> (size of window around ref positions to prepare, default=50000)
  type: boolean
  inputBinding:
    prefix: -window
- id: max
  doc: <#> (maximum number of preparesed fragments to create, default=2e6)
  type: boolean
  inputBinding:
    prefix: -max
- id: min_inc
  doc: <#> (minimum size of region near ref pos to include, default=1000)
  type: boolean
  inputBinding:
    prefix: -minInc
- id: pre_parsed_dir
  doc: (alternative directory to place the preparsed output files)
  type: Directory
  inputBinding:
    prefix: -preparsedDir
outputs: []
cwlVersion: v1.1
baseCommand:
- preparseGenome.pl
