class: CommandLineTool
id: ../../../svtk_bedcluster.cwl
inputs:
- id: frac
  doc: Minimum reciprocal overlap fraction to link variants. [0.8]
  type: string
  inputBinding:
    prefix: --frac
- id: region
  doc: Region to cluster (chrom:start-end). Requires tabixed bed.
  type: string
  inputBinding:
    prefix: --region
- id: prefix
  doc: Cluster ID prefix
  type: string
  inputBinding:
    prefix: --prefix
- id: merge_coordinates
  doc: Report median of start and end positions in each cluster as final coordinates
    of cluster.
  type: boolean
  inputBinding:
    prefix: --merge-coordinates
- id: tmpdir
  doc: Temporary directory [/tmp]
  type: string
  inputBinding:
    prefix: --tmpdir
- id: intersection
  doc: Pre-computed self-intersection of bed.
  type: long
  inputBinding:
    prefix: --intersection
- id: bed
  doc: 'SV calls to cluster. Columns: #chr, start, end, name, sample, svtype'
  type: string
  inputBinding:
    position: 0
- id: f_out
  doc: Clustered bed.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- bedcluster
