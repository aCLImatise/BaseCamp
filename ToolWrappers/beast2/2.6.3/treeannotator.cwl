class: CommandLineTool
id: treeannotator.cwl
inputs:
- id: in_heights
  doc: option of 'keep' (default), 'median', 'mean' or 'ca'
  type: string?
  inputBinding:
    prefix: -heights
- id: in_burnin
  doc: percentage of states to be considered as 'burn-in'
  type: string?
  inputBinding:
    prefix: -burnin
- id: in_b
  doc: percentage of states to be considered as 'burn-in'
  type: string?
  inputBinding:
    prefix: -b
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
- id: in_lowmem
  doc: less memory, which is a bit slower.
  type: string?
  inputBinding:
    prefix: -lowMem
- id: in_hpd_two_d
  doc: HPD interval to be used for the bivariate traits
  type: long?
  inputBinding:
    prefix: -hpd2D
- id: in_no_hpd_two_d
  doc: calculation of HPD intervals for the bivariate traits
  type: long?
  inputBinding:
    prefix: -nohpd2D
- id: in_nos_a
  doc: the tree set as begin from a not being from a sampled ancestor analysis, even
    if there are zero branch lengths in the tree set
  type: string?
  inputBinding:
    prefix: -noSA
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/beast2:2.6.3--hf1b8bbb_0
cwlVersion: v1.1
baseCommand:
- treeannotator
