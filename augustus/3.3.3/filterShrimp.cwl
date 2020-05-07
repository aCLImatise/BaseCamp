class: CommandLineTool
id: filterShrimp.pl.cwl
inputs:
- id: min_score
  doc: minimal percentage of identity (default 300)
  type: string
  inputBinding:
    prefix: --minScore
- id: uniq
  doc: take only best match and only, when second best is much worse (default false)
  type: boolean
  inputBinding:
    prefix: --uniq
- id: uniq_thresh
  doc: the best alignment is considered uniquen when the second best has a score at
    most this much fraction of the best (default 0.9)
  type: string
  inputBinding:
    prefix: --uniqthresh
- id: best
  doc: take (all) best alignment(s) if they pass the minScore filter.
  type: boolean
  inputBinding:
    prefix: --best
- id: common_gene_file
  doc: file name in which to write cases where one read maps to several different
    genes
  type: string
  inputBinding:
    prefix: --commongenefile
- id: verbose
  doc: output debugging info (default false)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- filterShrimp.pl
