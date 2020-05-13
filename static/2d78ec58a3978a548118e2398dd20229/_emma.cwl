class: CommandLineTool
id: _emma.cwl
inputs:
- id: only_d_end
  doc: toggle     [N] Only produce dendrogram file
  type: boolean
  inputBinding:
    prefix: -onlydend
- id: gap_dist
  doc: 'integer    [8] Gap separation distance: tries to decrease the chances of gaps
    being too close to each other. Gaps that are less than this distance apart are
    penalised more than other gaps. This does not prevent close gaps; it makes them
    less frequent, promoting a block-like appearance of the alignment. (Positive integer)'
  type: boolean
  inputBinding:
    prefix: -gapdist
outputs: []
cwlVersion: v1.1
baseCommand:
- _emma
