class: CommandLineTool
id: csb_hhsearch.cwl
inputs:
- id: query
  doc: query HMM file(s)
  type: string
  inputBinding:
    position: 0
- id: binary
  doc: full path to the HHsearch binary (default=hhsearch)
  type: string
  inputBinding:
    prefix: --binary
- id: cpu
  doc: maximum degree of parallelism (default=8)
  type: string
  inputBinding:
    prefix: --cpu
- id: database
  doc: the subject (database) HMM file
  type: string
  inputBinding:
    prefix: --database
outputs: []
cwlVersion: v1.1
baseCommand:
- csb-hhsearch
