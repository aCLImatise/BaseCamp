class: CommandLineTool
id: merge2Dbed.pl.cwl
inputs:
- id: in_res
  doc: "<#> (maximum distance between endpoints to merge, default: 15000)\nUsually\
    \ for loops -res should be set to the window/superRes size, for TADs 2x window/superRes"
  type: boolean?
  inputBinding:
    prefix: -res
- id: in_loop
  doc: (treat 2D bed input files as loops, default)
  type: boolean?
  inputBinding:
    prefix: -loop
- id: in_tad
  doc: (treat 2D bed input files as TADs)
  type: boolean?
  inputBinding:
    prefix: -tad
- id: in_prefix
  doc: (output venn diagram overlaps to separate files)
  type: File?
  inputBinding:
    prefix: -prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- merge2Dbed.pl
