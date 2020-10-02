class: CommandLineTool
id: hybrid_min.cwl
inputs:
- id: in_all_pairs
  doc: "--maxloop=<maximum bulge/interior loop size> (defaults to 30)\n--nodangle\n\
    --prefilter=<value1, value2>\n--stream"
  type: boolean
  inputBinding:
    prefix: --allpairs
- id: in_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_file_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hybrid-min
