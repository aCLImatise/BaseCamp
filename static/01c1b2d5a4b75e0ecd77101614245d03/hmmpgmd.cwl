class: CommandLineTool
id: hmmpgmd.cwl
inputs:
- id: master
  doc: ': run program as the master server'
  type: boolean
  inputBinding:
    prefix: --master
- id: worker
  doc: ': run program as a worker with server at <s>'
  type: string
  inputBinding:
    prefix: --worker
- id: c_port
  doc: ': port to use for client/server communication  [51371]'
  type: string
  inputBinding:
    prefix: --cport
- id: w_port
  doc: ': port to use for server/worker communication  [51372]'
  type: string
  inputBinding:
    prefix: --wport
- id: cc_ncts
  doc: ': maximum number of client side connections to accept  [16]'
  type: string
  inputBinding:
    prefix: --ccncts
- id: wcnc_ts
  doc: ': maximum number of worker side connections to accept  [32]'
  type: string
  inputBinding:
    prefix: --wcncts
- id: pid
  doc: ': file to write process id to'
  type: string
  inputBinding:
    prefix: --pid
- id: seq_db
  doc: ': protein database to cache for searches'
  type: string
  inputBinding:
    prefix: --seqdb
- id: hmm_db
  doc: ': hmm database to cache for searches'
  type: string
  inputBinding:
    prefix: --hmmdb
- id: cpu
  doc: ': number of parallel CPU workers to use for multithreads  [2]'
  type: string
  inputBinding:
    prefix: --cpu
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmpgmd
