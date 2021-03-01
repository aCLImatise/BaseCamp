class: CommandLineTool
id: findTcovSnp.cwl
inputs:
- id: in_prune_low_quality
  doc: Prune low quality discrepancies from report (no qv > 30)
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_amb
  doc: Only print contig positions with an ambiguity code
  type: boolean?
  inputBinding:
    prefix: -amb
- id: in_min_qv
  doc: Specify minimum cummulative qv of disagreeing reads
  type: boolean?
  inputBinding:
    prefix: -minqv
- id: in_min_snp
  doc: minimum number of consistent disagreeing reads
  type: long?
  inputBinding:
    prefix: -minsnp
- id: in_qvs
  doc: 'Print Quality Values stats (max, avg) [ Default: -noqvs ]'
  type: boolean?
  inputBinding:
    prefix: -qvs
- id: in_prefix
  doc: ''
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
- findTcovSnp
