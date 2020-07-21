class: CommandLineTool
id: ../../../getGenomeTilingPeaks.cwl
inputs:
- id: tag_directories_analyze
  doc: '[tag directory 2] ... (tag directories to analyze)'
  type: string
  inputBinding:
    prefix: -d
- id: res
  doc: <#> (resolution of analysis)
  type: boolean
  inputBinding:
    prefix: -res
outputs: []
cwlVersion: v1.1
baseCommand:
- getGenomeTilingPeaks
