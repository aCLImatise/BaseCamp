#!/usr/bin/env cwl-runner

baseCommand:
- eqtlbma_avg_bfs
class: CommandLineTool
cwlVersion: v1.0
id: eqtlbma_avg_bfs
inputs:
- doc: the best config/type per SNP (and its posterior)
  id: best_dim
  inputBinding:
    prefix: --bestdim
  type: string
- doc: report also BF and/or posterior for all dimensions (configs or types) caution,
    the number of configurations can be big
  id: all_dim
  inputBinding:
    prefix: --alldim
  type: boolean
- doc: name of the output file (gzipped) if --cwts is not provided, the output file
    will be used as input for 'eqtlbma_hm'
  id: out
  inputBinding:
    prefix: --out
  type: boolean
- doc: number of threads (default=1)
  id: thread
  inputBinding:
    prefix: --thread
  type: boolean
