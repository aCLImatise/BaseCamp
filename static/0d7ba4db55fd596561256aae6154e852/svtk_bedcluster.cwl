class: CommandLineTool
id: svtk_bedcluster.cwl
inputs:
- id: in_frac
  doc: "Minimum reciprocal overlap fraction to link variants.\n[0.8]"
  type: double?
  inputBinding:
    prefix: --frac
- id: in_region
  doc: "Region to cluster (chrom:start-end). Requires tabixed\nbed."
  type: string?
  inputBinding:
    prefix: --region
- id: in_prefix
  doc: Cluster ID prefix
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_merge_coordinates
  doc: "Report median of start and end positions in each\ncluster as final coordinates\
    \ of cluster."
  type: boolean?
  inputBinding:
    prefix: --merge-coordinates
- id: in_tmpdir
  doc: Temporary directory [/tmp]
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_intersection
  doc: "Pre-computed self-intersection of bed.\n"
  type: string?
  inputBinding:
    prefix: --intersection
- id: in_bed
  doc: "SV calls to cluster. Columns: #chr, start, end, name,\nsample, svtype"
  type: string
  inputBinding:
    position: 0
- id: in_f_out
  doc: Clustered bed.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- svtk
- bedcluster
