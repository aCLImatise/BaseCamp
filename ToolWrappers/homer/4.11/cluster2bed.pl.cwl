class: CommandLineTool
id: cluster2bed.pl.cwl
inputs:
- id: in_res
  doc: '<#> (resolution used to create the file, default: auto detect)'
  type: boolean?
  inputBinding:
    prefix: -res
- id: in_min_p
  doc: "<#> (minimum % of regions in a cluster to include, default: 0.01)\n(i.e. do\
    \ not output clusters containing fewer than x percent of the data"
  type: boolean?
  inputBinding:
    prefix: -minp
- id: in_name
  doc: (track name for UCSC)
  type: string?
  inputBinding:
    prefix: -name
- id: in_cluster_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cluster2bed.pl
