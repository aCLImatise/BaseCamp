class: CommandLineTool
id: reduce_sr.cwl
inputs:
- id: maximum_search_depth
  doc: Check at most this many possible containing SuperReads (100)
  type: long
  inputBinding:
    prefix: --maximum-search-depth
- id: output
  doc: Output file name (reduce.tmp)
  type: File
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- reduce_sr
