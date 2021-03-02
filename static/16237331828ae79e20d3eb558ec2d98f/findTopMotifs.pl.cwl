class: CommandLineTool
id: findTopMotifs.pl.cwl
inputs:
- id: in_top
  doc: <#> (number of times to find top motif default:5)
  type: boolean?
  inputBinding:
    prefix: -top
- id: in_size
  doc: <#> (size of fragment | 200)
  type: boolean?
  inputBinding:
    prefix: -size
- id: in_search_size
  doc: <#> (size of fragment to search to remove for future rounds | 200)
  type: boolean?
  inputBinding:
    prefix: -searchSize
- id: in_prefix
  doc: '(Name of motif files: prefix.top1.motif... | peakfile.top1.motif)'
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
- findTopMotifs.pl
