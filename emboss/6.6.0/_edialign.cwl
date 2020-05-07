class: CommandLineTool
id: _edialign.cwl
inputs:
- id: overlap_w
  doc: selection  [default (when Nseq =< 35)] By default overlap weights are used
    when Nseq =<35 but you can set this to 'yes' or 'no'
  type: boolean
  inputBinding:
    prefix: -overlapw
- id: linkage
  doc: 'menu       [UPGMA] Clustering method to construct sequence tree (UPGMA, minimum
    linkage or maximum linkage) (Values: UPGMA (UPGMA); max (maximum linkage); min
    (minimum linkage))'
  type: boolean
  inputBinding:
    prefix: -linkage
- id: max_frag_l
  doc: integer    [40] Maximum fragment length (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -maxfragl
outputs: []
cwlVersion: v1.1
baseCommand:
- _edialign
