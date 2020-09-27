class: CommandLineTool
id: hmmpgmd_shard.cwl
inputs:
- id: in_master
  doc: ': run program as the master server'
  type: boolean
  inputBinding:
    prefix: --master
- id: in_worker
  doc: ': run program as a worker with server at <s>'
  type: string
  inputBinding:
    prefix: --worker
- id: in_c_port
  doc: ': port to use for client/server communication  [51371]'
  type: long
  inputBinding:
    prefix: --cport
- id: in_w_port
  doc: ': port to use for server/worker communication  [51372]'
  type: long
  inputBinding:
    prefix: --wport
- id: in_cc_ncts
  doc: ': maximum number of client side connections to accept  [16]'
  type: long
  inputBinding:
    prefix: --ccncts
- id: in_wcnc_ts
  doc: ': maximum number of worker side connections to accept  [32]'
  type: long
  inputBinding:
    prefix: --wcncts
- id: in_pid
  doc: ': file to write process id to'
  type: File
  inputBinding:
    prefix: --pid
- id: in_seq_db
  doc: ': protein database to cache for searches'
  type: string
  inputBinding:
    prefix: --seqdb
- id: in_hmm_db
  doc: ': hmm database to cache for searches'
  type: string
  inputBinding:
    prefix: --hmmdb
- id: in_cpu
  doc: ': number of parallel CPU workers to use for multithreads  [2]'
  type: long
  inputBinding:
    prefix: --cpu
- id: in_num_shards
  doc: ': number of worker nodes that will connect to the master  [1]'
  type: long
  inputBinding:
    prefix: --num_shards
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmmpgmd_shard
