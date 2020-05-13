class: CommandLineTool
id: epic.cwl
inputs:
- id: bed
  doc: A summary bed file of all regions for display in the UCSC genome browser or
    downstream analyses with e.g. bedtools. The score field is log2(#ChIP/#Input)
    * 100 capped at a 1000.
  type: string
  inputBinding:
    prefix: --bed
- id: log
  doc: File to write log messages to.
  type: string
  inputBinding:
    prefix: --log
- id: outfile
  doc: File to write results to. By default sent to stdout.
  type: string
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- epic
