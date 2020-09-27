class: CommandLineTool
id: reduce_sr.cwl
inputs:
- id: in_maximum_search_depth
  doc: Check at most this many possible containing SuperReads (100)
  type: long
  inputBinding:
    prefix: --maximum-search-depth
- id: in_output
  doc: Output file name (reduce.tmp)
  type: File
  inputBinding:
    prefix: --output
- id: in_cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_largest_kuni_tig
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file name (reduce.tmp)
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- reduce_sr
