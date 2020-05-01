#!/usr/bin/env cwl-runner

baseCommand:
- hmmpgmd
class: CommandLineTool
cwlVersion: v1.0
id: hmmpgmd
inputs:
- doc: ': run program as the master server'
  id: master
  inputBinding:
    prefix: --master
  type: boolean
- doc: ': run program as a worker with server at <s>'
  id: worker
  inputBinding:
    prefix: --worker
  type: string
- doc: ': port to use for client/server communication  [51371]'
  id: c_port
  inputBinding:
    prefix: --cport
  type: string
- doc: ': port to use for server/worker communication  [51372]'
  id: w_port
  inputBinding:
    prefix: --wport
  type: string
- doc: ': maximum number of client side connections to accept  [16]'
  id: cc_ncts
  inputBinding:
    prefix: --ccncts
  type: string
- doc: ': maximum number of worker side connections to accept  [32]'
  id: wcnc_ts
  inputBinding:
    prefix: --wcncts
  type: string
- doc: ': file to write process id to'
  id: pid
  inputBinding:
    prefix: --pid
  type: string
- doc: ': protein database to cache for searches'
  id: seq_db
  inputBinding:
    prefix: --seqdb
  type: string
- doc: ': hmm database to cache for searches'
  id: hmm_db
  inputBinding:
    prefix: --hmmdb
  type: string
- doc: ': number of parallel CPU workers to use for multithreads  [2]'
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
