class: CommandLineTool
id: filterShrimp.pl.cwl
inputs:
- id: in_min_score
  doc: minimal percentage of identity (default 300)
  type: long?
  inputBinding:
    prefix: --minScore
- id: in_uniq
  doc: take only best match and only, when second best is much worse (default false)
  type: boolean?
  inputBinding:
    prefix: --uniq
- id: in_uniq_thresh
  doc: the best alignment is considered uniquen when the second best has a score at
    most this much fraction of the best (default 0.9)
  type: double?
  inputBinding:
    prefix: --uniqthresh
- id: in_best
  doc: take (all) best alignment(s) if they pass the minScore filter.
  type: boolean?
  inputBinding:
    prefix: --best
- id: in_common_gene_file
  doc: file name in which to write cases where one read maps to several different
    genes
  type: File?
  inputBinding:
    prefix: --commongenefile
- id: in_verbose
  doc: output debugging info (default false)
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filterShrimp.pl
