class: CommandLineTool
id: ../../../reduce_sr.cwl
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
- id: cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: largest_kuni_tig
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- reduce_sr
