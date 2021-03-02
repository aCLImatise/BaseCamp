class: CommandLineTool
id: csb_hhsearch.cwl
inputs:
- id: in_binary
  doc: full path to the HHsearch binary (default=hhsearch)
  type: File?
  inputBinding:
    prefix: --binary
- id: in_cpu
  doc: maximum degree of parallelism (default=8)
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_database
  doc: "the subject (database) HMM file\n"
  type: File?
  inputBinding:
    prefix: --database
- id: in_query
  doc: query HMM file(s)
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
- csb-hhsearch
