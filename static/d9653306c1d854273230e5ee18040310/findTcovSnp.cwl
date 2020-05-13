class: CommandLineTool
id: findTcovSnp.cwl
inputs:
- id: amb
  doc: Only print contig positions with an ambiguity code
  type: boolean
  inputBinding:
    prefix: -amb
- id: min_qv
  doc: Specify minimum cummulative qv of disagreeing reads
  type: boolean
  inputBinding:
    prefix: -minqv
- id: min_snp
  doc: minimum number of consistent disagreeing reads
  type: string
  inputBinding:
    prefix: -minsnp
- id: qvs
  doc: 'Print Quality Values stats (max, avg) [ Default: -noqvs ]'
  type: boolean
  inputBinding:
    prefix: -qvs
outputs: []
cwlVersion: v1.1
baseCommand:
- findTcovSnp
