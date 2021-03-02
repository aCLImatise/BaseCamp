class: CommandLineTool
id: SpoTyping_plot.r.cwl
inputs:
- id: in_nobs
  doc: "The following object is masked from 'package:utils':"
  type: string
  inputBinding:
    position: 0
- id: in_object_dot_size
  doc: "The following object is masked from 'package:base':"
  type: long
  inputBinding:
    position: 1
- id: in_starts_with
  doc: 'Error in findPerl(verbose = verbose) : '
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SpoTyping_plot.r
