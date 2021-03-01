class: CommandLineTool
id: getGenomeTilingPeaks.cwl
inputs:
- id: in_tag_directories_analyze
  doc: '[tag directory 2] ... (tag directories to analyze)'
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_res
  doc: <#> (resolution of analysis)
  type: boolean?
  inputBinding:
    prefix: -res
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- getGenomeTilingPeaks
