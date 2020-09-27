class: CommandLineTool
id: hybrid_ss_min.cwl
inputs:
- id: in_constraints
  doc: '[=<name of constraint file>] (defaults to prefix.aux)'
  type: boolean
  inputBinding:
    prefix: --constraints
- id: in_base_pairs
  doc: --circular
  type: File
  inputBinding:
    prefix: --basepairs
- id: in_all_pairs
  doc: "--maxloop=<maximum bulge/interior loop size> (defaults to 30)\n--nodangle\n\
    --simple\n--prefilter=<value1, value2>\n--stream"
  type: boolean
  inputBinding:
    prefix: --allpairs
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hybrid-ss-min
