class: CommandLineTool
id: cluster2bed.pl.cwl
inputs:
- id: res
  doc: '<#> (resolution used to create the file, default: auto detect)'
  type: boolean
  inputBinding:
    prefix: -res
- id: min_p
  doc: '<#> (minimum % of regions in a cluster to include, default: 0.01) (i.e. do
    not output clusters containing fewer than x percent of the data'
  type: boolean
  inputBinding:
    prefix: -minp
- id: name
  doc: (track name for UCSC)
  type: string
  inputBinding:
    prefix: -name
outputs: []
cwlVersion: v1.1
baseCommand:
- cluster2bed.pl
