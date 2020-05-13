class: CommandLineTool
id: eqtlbma_avg_bfs.cwl
inputs:
- id: best_dim
  doc: the best config/type per SNP (and its posterior)
  type: string
  inputBinding:
    prefix: --bestdim
- id: all_dim
  doc: report also BF and/or posterior for all dimensions (configs or types) caution,
    the number of configurations can be big
  type: boolean
  inputBinding:
    prefix: --alldim
- id: out
  doc: name of the output file (gzipped) if --cwts is not provided, the output file
    will be used as input for 'eqtlbma_hm'
  type: boolean
  inputBinding:
    prefix: --out
- id: thread
  doc: number of threads (default=1)
  type: boolean
  inputBinding:
    prefix: --thread
outputs: []
cwlVersion: v1.1
baseCommand:
- eqtlbma_avg_bfs
