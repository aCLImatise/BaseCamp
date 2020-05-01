#!/usr/bin/env cwl-runner

baseCommand:
- csb-csfrag
class: CommandLineTool
cwlVersion: v1.0
id: csb-csfrag
inputs:
- doc: query sequence (FASTA file)
  id: query
  inputBinding:
    position: 0
  type: string
- doc: PDBS25 database directory (containing PDBS25cs.scs)
  id: database
  inputBinding:
    prefix: --database
  type: string
- doc: assigned chemical shifts table (NMR STAR file fragment)
  id: shifts
  inputBinding:
    prefix: --shifts
  type: string
- doc: sliding window size (default=8)
  id: window
  inputBinding:
    prefix: --window
  type: string
- doc: maximum number per starting position (default=25)
  id: top
  inputBinding:
    prefix: --top
  type: string
- doc: maximum degree of parallelism (default=8)
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
- doc: verbosity level (default=1)
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
- doc: output directory (default=.)
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: make an additional filtered fragment map of centroids (default=False)
  id: filtered_map
  inputBinding:
    prefix: --filtered-map
  type: boolean
