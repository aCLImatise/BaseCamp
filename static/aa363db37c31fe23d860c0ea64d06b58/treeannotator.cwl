class: CommandLineTool
id: treeannotator.cwl
inputs:
- id: in_heights
  doc: option of 'keep' (default), 'median', 'mean' or 'ca'
  type: string?
  inputBinding:
    prefix: -heights
- id: in_burnin
  doc: number of states to be considered as 'burn-in'
  type: long?
  inputBinding:
    prefix: -burnin
- id: in_burnin_trees
  doc: number of trees to be considered as 'burn-in'
  type: long?
  inputBinding:
    prefix: -burninTrees
- id: in_limit
  doc: minimum posterior probability for a node to be annotated
  type: string?
  inputBinding:
    prefix: -limit
- id: in_target
  doc: a user target tree to be annotated
  type: string?
  inputBinding:
    prefix: -target
- id: in_force_discrete
  doc: integer traits to be treated as discrete traits.
  type: long?
  inputBinding:
    prefix: -forceDiscrete
- id: in_hpd_two_d
  doc: a (vector of comma seperated) HPD proportion(s)
  type: long?
  inputBinding:
    prefix: -hpd2D
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- treeannotator
