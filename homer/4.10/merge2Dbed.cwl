class: CommandLineTool
id: merge2Dbed.pl.cwl
inputs:
- id: res
  doc: '<#> (maximum distance between endpoints to merge, default: 15000) Usually
    for loops -res should be set to the window/superRes size, for TADs 2x window/superRes'
  type: boolean
  inputBinding:
    prefix: -res
- id: loop
  doc: (treat 2D bed input files as loops, default)
  type: boolean
  inputBinding:
    prefix: -loop
- id: tad
  doc: (treat 2D bed input files as TADs)
  type: boolean
  inputBinding:
    prefix: -tad
- id: prefix
  doc: (output venn diagram overlaps to separate files)
  type: File
  inputBinding:
    prefix: -prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- merge2Dbed.pl
