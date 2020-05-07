class: CommandLineTool
id: treeannotator.cwl
inputs:
- id: heights
  doc: option of 'keep' (default), 'median', 'mean' or 'ca'
  type: string
  inputBinding:
    prefix: -heights
- id: burnin
  doc: percentage of states to be considered as 'burn-in'
  type: string
  inputBinding:
    prefix: -burnin
- id: b
  doc: percentage of states to be considered as 'burn-in'
  type: string
  inputBinding:
    prefix: -b
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
- id: lowmem
  doc: less memory, which is a bit slower.
  type: string
  inputBinding:
    prefix: -lowMem
- id: hpd2d
  doc: HPD interval to be used for the bivariate traits
  type: string
  inputBinding:
    prefix: -hpd2D
- id: nohpd2d
  doc: calculation of HPD intervals for the bivariate traits
  type: string
  inputBinding:
    prefix: -nohpd2D
- id: nos_a
  doc: the tree set as begin from a not being from a sampled ancestor analysis, even
    if there are zero branch lengths in the tree set
  type: long
  inputBinding:
    prefix: -noSA
outputs: []
cwlVersion: v1.1
baseCommand:
- treeannotator
