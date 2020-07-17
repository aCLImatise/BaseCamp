class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/treeannotator.cwl
inputs:
- id: heights
  doc: option of 'keep' (default), 'median', 'mean' or 'ca'
  type: string
  inputBinding:
    prefix: -heights
- id: burnin
  doc: number of states to be considered as 'burn-in'
  type: string
  inputBinding:
    prefix: -burnin
- id: burnin_trees
  doc: number of trees to be considered as 'burn-in'
  type: string
  inputBinding:
    prefix: -burninTrees
- id: limit
  doc: minimum posterior probability for a node to be annotated
  type: string
  inputBinding:
    prefix: -limit
- id: target
  doc: a user target tree to be annotated
  type: string
  inputBinding:
    prefix: -target
- id: force_discrete
  doc: integer traits to be treated as discrete traits.
  type: string
  inputBinding:
    prefix: -forceDiscrete
- id: hpd_two_d
  doc: a (vector of comma seperated) HPD proportion(s)
  type: string
  inputBinding:
    prefix: -hpd2D
- id: input_file_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- treeannotator
